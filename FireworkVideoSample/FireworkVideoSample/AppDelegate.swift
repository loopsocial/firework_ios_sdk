//
//  AppDelegate.swift
//  FireworkVideoSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import UIKit

/// Add the dependency SDK
import FireworkVideo

@main
class AppDelegate: UIResponder, UIApplicationDelegate, FireworkVideoSDKDelegate {

    var videoPlaybackLogger = VideoPlaybackLogger()
    var videoFeedLogger = VideoFeedLogger()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        /// Initialize the SDK as soon as app launches.
        FireworkVideoSDK.initializeSDK(delegate: self)
        
        /// Set the video playback event logger, this is optional
        FireworkVideoSDK.eventTracking.videoPlaybackDelegate = self.videoPlaybackLogger
        FireworkVideoSDK.eventTracking.feedDelegate = self.videoFeedLogger
        
        return true
    }
    
    /// Implementing the FireworkVideoSDKDelegate allows
    /// the SDK to notify your app if it was successfully
    /// setup.
    func fireworkVideoDidLoadSuccessfully() {
        print("FireworkVideo loaded successfully.")
    }
    
    func fireworkVideoDidLoadWith(error: FireworkVideoSDKError) {
        switch error {
        case .missingAppID:
            print("FireworkVideo loaded with error due to missing app ID.")
        case .authenticationFailure:
            print("FireworkVideo loaded with error due to authentication failure.")
        default:
            break
        }
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
}

