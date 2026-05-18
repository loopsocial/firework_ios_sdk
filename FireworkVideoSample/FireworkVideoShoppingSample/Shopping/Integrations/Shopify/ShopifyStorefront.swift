//
//  ShopifyStorefront.swift
//  FireworkVideoShoppingSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import Foundation
import FireworkVideo
// Shopify Buy SDK v6.2
import Buy

class ShopifyStorefront: StorefrontRepository {

    // TODO: Update the store front and api key with your Shopify information
    // For more details read the shopify docs
    // https://shopify.dev/custom-storefronts/tools/ios
    // and checkout their sample code as well
    // https://github.com/Shopify/mobile-buy-sdk-ios-sample
    static let storeFront = "your-dev-store.myshopify.com"
    static let apiKey = "1234567890"

    static let locale   = Locale(identifier: "en-US")

    private let client: Graph.Client = Graph.Client(
        shopDomain: ShopifyStorefront.storeFront,
        apiKey: ShopifyStorefront.apiKey,
        locale: ShopifyStorefront.locale
    )

    init() {
        self.client.cachePolicy = .cacheFirst(expireIn: 3600)
    }

    /*
     This code provides an example of how the FireworkVideoSDK can easily be integrated with a Shopify Storefront
     to provide the most up to date product information.
     */
    func hydrateProducts(
        _ productIDs: [String],
        with hydrator: ProductHydrating
    ) {
        for id in productIDs {
            // Shopify does not have a way to fetch products in bulk.
            // This means we must make a request for each product.
            self.fetchProduct(by: id) { result in
                do {
                    let product = try result.get()
                    // Call the hydrator with the product id.
                    // A product builder will be passed into the closure which will provide a way for the host app to
                    // update the details for the given product.
                    hydrator.hydrateProduct(id) {
                        let productBuilder = $0.description(product.descriptionHtml)
                            .name(product.title)
                            .isAvailable(product.availableForSale)

                        for edge in product.variants.edges {
                            let variant = edge.node
                            guard let decodedID = variant.id.decodedID else {
                                continue
                            }
                            // The product's variants can also be updated by calling the productBuilder.variant and
                            // passing in the decoded variant id.
                            // A product builder will be passed into the closure
                            // which will provide a way for the host app to update
                            // the details for the given product variant.
                            productBuilder.variant(decodedID) {
                                let variantBuilder = $0.name(variant.title)
                                    .isAvailable(variant.availableForSale)
                                let price = variant.priceV2
                                variantBuilder.formattedPrice(
                                    price.amount,
                                    currencyCode: price.currencyCode.rawValue
                                )
                                if let src = variant.image?.originalSrc {
                                    variantBuilder.imageUrl(src.absoluteString)
                                }
                                return variantBuilder
                            }
                        }
                        return productBuilder
                    }
                } catch {
                    print("""
                    Failed to fetch product information: ProductID: \(id)

                    Error: \(error)
                    """)
                }
            }
        }
    }

    @discardableResult
    func fetchProduct(
        by id: String,
        _ completion: @escaping (Result<Storefront.Product, Error>) -> Void
    ) -> Task {
        let query = queryProduct(by: id)
        let task  = self.client.queryGraphWith(query) { (query, error) in
            if let error = error {
                completion(.failure(error))
            }
            if let product = query?.product {
                completion(.success(product))
            }
        }

        task.resume()
        return task
    }

    private func queryProduct(by id: String) -> Storefront.QueryRootQuery {
        // This query contains all of the properties that can be hydrated on
        // with the `FireworkVideoSDK.ProductHydrator`
        return Storefront.buildQuery {
            $0.product(id: GraphQL.ID(rawValue: "gid://shopify/Product/\(id)")) {
                $0.variants(first: 250) {
                    $0.edges {
                        $0.node {
                            $0.id()
                                .title()
                                .availableForSale()
                                .image {
                                    $0.originalSrc()
                                }
                                .priceV2 {
                                    $0.amount()
                                        .currencyCode()
                                }
                        }
                    }
                }
                .availableForSale()
                .descriptionHtml()
                .title()
                .id()
            }
        }
    }

     // This method fetches the latest product details and creates a cart item from it.
    func populateCartItemDetails(
        productID: String,
        unitID: String,
        _ completion: @escaping (Result<CartItem, StorefrontRepositoryError>) -> Void
    ) {
        self.fetchProduct(by: productID) { result in
            do {
                let product = try result.get()
                guard let variant = product.variants.edges.first(where: { $0.node.id.decodedID == unitID }) else {
                    completion(.failure(.unknownVariant))
                    return
                }
                let unitPrice = variant.node.priceV2
                let price = Money(
                    amount: unitPrice.amount,
                    currencyCode: unitPrice.currencyCode.rawValue
                )
                let item = CartItem(productID: productID,
                                    unitID: unitID,
                                    name: product.title,
                                    price: price,
                                    description: variant.node.title,
                                    imageURL: variant.node.image?.originalSrc.absoluteString ?? "")
                completion(.success(item))
            } catch {
                completion(.failure(.productFetchError(error)))
            }
        }
    }

}

extension GraphQL.ID {
    /**
     Provides a convenient way to decode the id from Shopify.

     Shopify's Global ID's are base64 encoded strings with this format
     `gid://shopify/Product/<Product ID>`

     First the global id is decoded. Then the product id is extracted from the string.
     */
    var decodedID: String? {
        guard let data = Data(base64Encoded: self.rawValue) else {
            return nil
        }
        guard let decodedString = String(data: data, encoding: .utf8) else {
            return nil
        }
        guard let lastComponent = decodedString.split(separator: "/").last else {
            return nil
        }
        return String(lastComponent)
    }
}
