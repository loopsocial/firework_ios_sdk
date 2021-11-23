//
//  CheckoutViewController.swift
//  FireworkVideoShoppingSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import UIKit

class CheckoutViewController: UIViewController {

    private var shopping = ShoppingCartManager.shopifyInstance

    @IBOutlet weak var finishButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        finishButton.backgroundColor = AppTheme.ctaButtonColor
        view.backgroundColor = AppTheme.backgroundColor
    }

    @IBAction func handleFinishTap(_ sender: Any) {
        self.dismiss(animated: true)
    }

}
