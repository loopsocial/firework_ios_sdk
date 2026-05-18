//
//  StorefrontRepository.swift
//  FireworkVideoShoppingSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import Foundation
import FireworkVideo

enum StorefrontRepositoryError: Error {
    case productFetchError(Error)
    case unknownVariant
}

protocol StorefrontRepository {
    func hydrateProducts(
        _ productIDs: [String],
        with hydrator: ProductHydrating
    )
    func populateCartItemDetails(
        productID: String,
        unitID: String,
        _ completion: @escaping (Result<CartItem, StorefrontRepositoryError>) -> Void
    )
}
