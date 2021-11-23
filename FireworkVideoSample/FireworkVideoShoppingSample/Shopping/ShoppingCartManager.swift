//
//  ShoppingCartManager.swift
//  FireworkVideoShoppingSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import UIKit
import FireworkVideo

class ShoppingCartManager: FireworkVideoShoppingDelegate {

    static let shopifyInstance: ShoppingCartManager = {
        let shopifyStorefront = ShopifyStorefront()
        return ShoppingCartManager(storefront: shopifyStorefront)
    }()

    private var storefront: StorefrontRepository
    private(set) var cartItems: [CartItem] = []

    init(storefront: StorefrontRepository) {
        self.storefront = storefront
    }

    // FireworkVideoSDK will call this method before a configurable shopping view is displayed.
    // Here the host app should take care of updating view related configurations such as, showing a cart icon and
    // configuring the Add to cart button view.
    //
    // This method is optional. If it is not implemented no cart button will be shown and the default CTA button will
    // be displayed
    func fireworkShopping(
        _ fireworkShopping: FireworkVideoShopping,
        willDisplayProductInfo productInfoViewConfigurator: ProductInfoViewConfigurable,
        forVideo video: VideoDetails
    ) {
        var shoppingCartConfig = ShoppingCartIconConfiguration()
        // To show the shopping cart icon set to false
        shoppingCartConfig.isHidden = false
        // Next we can show or hide the red indicator on the shopping cart based on if the cart items are empty
        shoppingCartConfig.indicator.isHidden = cartItems.isEmpty
        // We must set the config on the configurator for the updates to take place
        productInfoViewConfigurator.shoppingCartIconConfiguration = shoppingCartConfig

        var detailConfig = ProductDetailsContentConfiguration()
        // The Add to cart button can also be configured
        var ctaButtonConfig = detailConfig.addToCartButton
        // Here we update the background of the CTA
        ctaButtonConfig.backgroundColor = AppTheme.ctaButtonColor
        // There are other button properties that can be updated like, font and text color.
        detailConfig.addToCartButton = ctaButtonConfig

        productInfoViewConfigurator.productDetailsConfiguration = detailConfig
    }

    // FireworkVideoSDK will call this method when video with products will be displayed to the user.
    // Here the host app can update any product and variant information.
    //
    // This method optional. Not implementing it simply skips the hydration.
    func fireworkShopping(
        _ fireworkShopping: FireworkVideoShopping,
        updateDetailsForProducts products: [ProductID],
        forVideo video: VideoDetails,
        _ productHydrator: ProductHydrating
    ) {
        storefront.hydrateProducts(products, with: productHydrator)
    }

    // FireworkVideoSDK will call this method when the user as selected the "Add to cart" button.
    // Here the host app should take care of adding the product variant into their cart.
    //
    // This method is not optional. It must be implemented.
    func fireworkShopping(
        _ fireworkShopping: FireworkVideoShopping,
        addProductVariantToCart item: SelectedProductVariant,
        fromVideo video: VideoDetails,
        _ addToCartCompletionHandler: @escaping AddToCartHandler
    ) {
        if let itemIdx = cartItems.firstIndex(where: { $0.productID == item.productID && $0.unitID == item.unitID}) {
            incrementItemQuantity(at: itemIdx)
            addToCartCompletionHandler(.showEmbeddedCart)
        } else {
            storefront.populateCartItemDetails(productID: item.productID, unitID: item.unitID) { [weak self] result in
                guard let self = self else { return }
                do {
                    let cartItem = try result.get()
                    // Persisting the cart item is omitted for the sample app.
                    // It is a good idea to store this information for later use.
                    // For this sample we will just keep it in memory.
                    self.cartItems.append(cartItem)
                    // Notify app of cart update

                    // Important: The host app must call `addToCartCompletionHandler`.

                    // There can be two different actions that occur
                    // Dismiss the product summary screen and display a custom toast message

                    // addToCartCompletionHandler(.dismissWithFeedback(.success(message: "Add!")))

                    // or the toast can use the default success message

                    // addToCartCompletionHandler(.dismissWithFeedback(.successWithDefaultMessage))

                    // The second action is embedding a custom `CartViewController`
                    // For this action the `CartProvider` will provide a `CartViewController` that will be pushed onto
                    // the product summary view.
                    addToCartCompletionHandler(.showEmbeddedCart)
                    // Warning: Passing this action requires the `FireworkVideoSDK.shopping.cartViewControllerProvider`
                    // be set; otherwise `.dismissWithFeedback(.successWithDefaultMessage)` will be used.
                } catch StorefrontRepositoryError.productFetchError {
                    // A custom failure message can be displayed to the user.
                    addToCartCompletionHandler(.dismissWithFeedback(.failure(message: "Failed to fetch product information")))
                } catch StorefrontRepositoryError.unknownVariant {
                    // A custom failure message indicating a specific message for the error type
                    addToCartCompletionHandler(.dismissWithFeedback(.failure(message: "Unable to locate the selected variant")))
                } catch {
                    // There is a default canned message that can be used `failureWithDefaultMessage`.
                    addToCartCompletionHandler(.dismissWithFeedback(.failureWithDefaultMessage))
                }
            }
        }

    }

    func incrementItemQuantity(at idx: Int) {
        cartItems[idx].quantity += 1
        // Notify app of cart change
    }

    func removeItem(at idx: Int) {
        cartItems.remove(at: idx)
    }

}
