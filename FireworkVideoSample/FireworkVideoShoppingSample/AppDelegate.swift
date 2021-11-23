//
//  AppDelegate.swift
//  FireworkVideoShoppingSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import UIKit

/// Add the dependency SDK
import FireworkVideo

@main
class AppDelegate:
    UIResponder,
    UIApplicationDelegate,
    CartViewControllerProviding {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        // Initialize the SDK as soon as app launches.
        FireworkVideoSDK.initializeSDK()

        // Providing a shopping delegate is the minimum integration to get started with FireworkVideoShopping
        FireworkVideoSDK.shopping.shoppingDelegate = ShoppingCartManager.shopifyInstance

        // Assigning a cart view controller provider enables the
        // host app to embed a custom `CartViewController`
        FireworkVideoSDK.shopping.cartViewControllerProvider = self

        return true
    }

    // MARK: - CartViewControllerProviding

    // FireworkVideoSDK will call this method when an action occurs that would trigger
    // an embedded CartViewController to be displayed.
    func cartViewController(
        for video: VideoDetails
    ) -> FireworkVideo.CartViewController {
        // Return a new instance to be displayed
        let cartVC = CartViewController.create()
        cartVC.checkoutDisplayStyle = .push
        return cartVC
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }


}

