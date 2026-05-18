//
//  CheckoutViewController.swift
//  FireworkVideoShoppingSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import UIKit
import FireworkVideo

class CheckoutViewController: UIViewController {

    private var shopping = ShoppingCartManager.shopifyInstance
    var drawerController: DrawerControllerRepresentable?

    @IBOutlet weak var finishButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        finishButton.backgroundColor = AppTheme.ctaButtonColor
        view.backgroundColor = AppTheme.backgroundColor
    }

    @IBAction func handleFinishTap(_ sender: Any) {
        self.drawerController?.closeDrawer(animated: true)
        self.dismiss(animated: true)
    }

}
