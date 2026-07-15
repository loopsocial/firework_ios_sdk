//
//  CartViewController.swift
//  FireworkVideoShoppingSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import UIKit
import FireworkVideo

class CartViewController: UIViewController, CartViewRepresentable {

    private static let cellID = "tv.fw.cartItem"

    enum DisplayStyle {
        case present
        case push
    }

    var checkoutDisplayStyle = DisplayStyle.push

    var shopping = ShoppingCartManager.shopifyInstance

    @IBOutlet weak var checkoutButton: UIButton!

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkoutButton.backgroundColor = AppTheme.ctaButtonColor
        view.backgroundColor = AppTheme.backgroundColor
        title = "Host App Cart"
        setupTableView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        checkoutButton.isEnabled = !shopping.cartItems.isEmpty
    }

    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(
            UINib(nibName: "CartItemViewCell", bundle: .main),
            forCellReuseIdentifier: Self.cellID
        )
        tableView.rowHeight = 122

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "checkoutSegue" {
            if let destinationVC = segue.destination as? CheckoutViewController {
                destinationVC.drawerController = self.drawerController
            }
        }
    }

    @IBAction func handleCheckOutTap(_ sender: Any) {
        switch checkoutDisplayStyle {
        case .present:
            guard let checkout = storyboard?.instantiateViewController(identifier: "CheckoutViewController") as? CheckoutViewController else {
                return
            }
            checkout.drawerController = self.drawerController
            present(checkout, animated: true)
        case .push:
            performSegue(withIdentifier: "checkoutSegue", sender: self)
        }

        // Shopping V2 purchase tracking: report the order built from the cart contents.
        let lineItems = shopping.cartItems.map { item in
            LineItem(
                sku: item.productID,
                price: item.price.amount,
                quantity: item.quantity,
                productName: item.name
            )
        }
        let subtotal = lineItems.reduce(Decimal(0)) { $0 + $1.price * Decimal($1.quantity) }
        let totalDiscounts = Decimal(Int.random(in: 0 ... 500)) / 100
        let shippingPrice = Decimal(Int.random(in: 100 ... 2000)) / 100
        FireworkVideoSDK.trackPurchase(
            orderID: UUID().uuidString,
            orderValue: subtotal - totalDiscounts + shippingPrice,
            currencyCode: shopping.cartItems.first?.price.currencyCode ?? Locale.current.currencyCode ?? "USD",
            countryCode: Locale.current.regionCode,
            shippingPrice: shippingPrice,
            subtotal: subtotal,
            totalDiscounts: totalDiscounts,
            lineItems: lineItems,
            [
                "additionalKey1": "additionalValue1",
                "additionalKey2": "additionalValue2",
                "additionalKey3": "additionalValue3"
            ]
        )
    }

}

extension CartViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int { 1 }

    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return shopping.cartItems.count
    }

    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: Self.cellID,
            for: indexPath
        )
        guard let cartCell = cell as? CartItemViewCell else { return cell }
        let cartItem = shopping.cartItems[indexPath.row]
        if let urlString = cartItem.imageURL,
           let url = URL(string: urlString),
           !urlString.isEmpty {
            cartCell.setProductImage(url)
        } else {
            cartCell.itemImage?.image = UIImage(systemName: "shippingbox")
        }
        cartCell.productLabel.text = cartItem.name
        cartCell.unitLabel.text = cartItem.description
        cartCell.priceLabel.text = cartItem.price.formattedPrice()
        return cartCell
    }
}

extension CartViewController {
    static func create() -> CartViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        return storyboard.instantiateViewController(identifier: "CartViewController")
    }
}
