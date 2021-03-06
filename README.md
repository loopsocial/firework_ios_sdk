# FireworkVideo

## About

FireworkVideo is a library to integrate video feeds from Firework - a short form video platform - into your iOS app.

## Setup Prerequisites

To integrate FireworkVideo into your application, you have to register your application with Firework platform and get unique FireworkVideo app ID. To get the app ID:

- Provide your application's bundle identifier or package name to the business team / engineering team you are co-ordinating with.
- You will receive via email the app ID ad, then follow the setup steps below under Firework IDs to include both in your app.

The app ID is used to authenticate your application with the server. Authentication will fail if you use wrong app ID.

## Requirements

FireworkVideo is compatible with:

  - iOS 11 or greater.
  - Xcode 12.4 or greater.
  - Swift 5.3 or greater.

## How to add FireworkVideo to your Xcode project?

FireworkVideo can be added as a Swift binary package using Swift Package Manager or it can be imported manually as framework. Instructions for both installation methods are below.

### Importing Using Swift Package Manager

In your Xcode project, select File > Swift Packages > Add Package Dependency and enter the following URL: `https://www.github.com/loopsocial/firework_ios_sdk/`

> If you are new to Xcode's Swift Pacakage Manager integration, please refer to Apple's documentation on [Adding a Package Dependency to Your App](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app)

Select Version > Up to Next Major > 0.5.0.

### Importing Using Cocoapods

In your Podfile add FireworkVideo: `pod FireworkVideo` and then run `pod install`.

### Importing FireworkVideo Framework Manually

* Clone the SDK repo located at `https://www.github.com/loopsocial/firework_ios_sdk/`

* Download the [SDK binary](https://www.github.com/loopsocial/firework_ios_sdk/releases/download/v0.5.0/FireworkVideo-v0.5.0.xcframework.zip) and unzip if needed.

* Drag the unzipped `FireworkVideo.xcframework` into the Xcode project navigator and drop it at root of your project. Make sure `Copy items if needed` checkbox is selected in the confirmation dialog. Check to make sure your project directory now has `FireworkVideo.xcframework` in it and it is visible and linked in your Xcode project navigator.

* In your apps Project pane select your app Target > Build Phases, click the + button, and add a Copy Files step. Select `Frameworks` as the destination and click the + within the Copy Files step and select FireworkVideo.xcframework. Your Copy Files step should look like below. 

![Copy Files Step](https://github.com/loopsocial/firework_ios_sdk/blob/main/Resources/manual_installation_copy_files_step.png?raw=true)

### Firework IDs

Include the app ID in your app `Info.plist` file using the key `FireworkVideoAppID` see image below. If the app ID is not included or is included under a differently spelled key, the SDK will return an error. See Troubleshooting for more details.

![App Setup Info Plist](https://github.com/loopsocial/firework_ios_sdk/blob/main/Resources/app_setup_info_plist.png?raw=true)

### Using FireworkVideo

#### Sample Code

There is a sample project available under `FireworkVideoSample` that sets up the FireworkVideo framework using Swift Package Manager (SPM). Please read-over the sample code documentation located in `FireworkVideoSample/README.md` for setup tips.

#### Initialization

Before using any components video components are used you must initialize `FireworkVideo`.

Start by importing the SDK into your App Delegate. Then initialize the Firework Video SDK in the App Delegate method `application(:, didFinishLaunchingWithOptions:) -> Bool`.

```
import UIKit

// Add the dependency SDK
import FireworkVideo

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
        // Initialize the SDK to start using
        FireworkVideoSDK.initializeSDK()
        
        return true
    }
    
    // ... // 
}
```
#### Displaying the Video Feed 

Displaying a video feed can be done by using a `VideoFeedViewController` either programmatically or in a storyboard. 

##### Programmatic

  1. Import FireworkVideo 
  2. Create a new `VideoFeedViewController`
  3. Present, show or embed the instantiated `VideoFeedViewController`
  
```
import FireworkVideo

class ViewController: UIViewController {

    func addFeedToTabBarController() {
        let feedVC = VideoFeedViewController()
        feedVC.tabBarItem = UITabBarItem(title: "Videos", image: nil, selectedImage: nil)
        self.tabBarController?.viewControllers?.append(feedVC)
    }

    func pushFeedOnNavigationController() {
        let feedVC = VideoFeedViewController()
        self.navigationController?.pushViewController(feedVC, animated: true)
    }

    func embedFeedInViewController() {
        let feedVC = VideoFeedViewController()
        self.addChild(feedVC)
        self.view.addSubview(feedVC.view)
        feedVC.view.frame = self.view.bounds
        feedVC.willMove(toParent: self)
    }
    
}
```

##### Storyboard

Adding a `VideoFeedViewController` to a storyboard is easy but has limited support. Therefore, layout and customizations can only be made progrgammatically. Both layout and customizations changes can be made at anytime. This allows you to add a `VideoFeedViewController` via storyboard then make adjustments programmatically.

  1. Open storyboard
  2. Add and select a `UIViewController`
  3. In the Inspector pane, select the Identity inspector
  4. Add `VideoFeedViewController` as the Custom Class
  5. Make sure the Module is set to `FireworkVideo`

![Storyboard Setup](https://github.com/loopsocial/firework_ios_sdk/blob/main/Resources/storyboard_setup.png?raw=true)

#### Layouts

There are two concrete layout types `VideoFeedHorizontalLayout` and `VideoFeedGridLayout`. A layout can be specified at time of instantiating a `let feedVC = VideoFeedViewController(layout: VideoFeedGridLayout())`. Or the layout can be set later by setting the layout property of the video feed view controller; `feedVC.layout = VideoFeedHorizontalLayout()`.

##### Horizontal Layout

The `VideoFeedHorizontalLayout` is a layout that has a single row and scrolls horizontally. The row will fill the available height. 

> A `VideoFeedHorizontalLayout` is best used by embedding in another view controller.

##### Grid Layout

The `VideoFeedGridLayout` is a layout that provides a vertical scrolling feed that has both columns and rows. The width of the items in the grid are calculated based on the `numberOfColumns` property in the `VideoFeedGridLayout`.

> Note: Only changing a layout property does not change the `VideoFeedViewController` layout. To update the `VideoFeedViewController` layout you must set the `layout` property after making the layout changes.

#### Feed Customizations

There are many view customizations that are exposed and can be accessed by the `viewConfiguration` of a `VideoFeedViewController`. All view configurations are value types which means changing the properties will not update the view state. To update the view state, simply set the `viewConfiguration` with the updated view configuration.

```
let feedVC = VideoFeedViewController()

// Gets the default configuration
var config = feedVC.viewConfiguration

// Sets the feed  background to white
config.backgroundColor = .white

// Gets the feed item view configuration. This applies to all items in the feed.
var itemConfig = config.itemView

// Sets the corner radius to 4
itemConfig.cornerRadius = 4
// Sets the title layout insets to 0
itemConfig.titleLayoutConfiguration.insets = .zero
// Sets the title position to stacked
itemConfig.titleLayoutConfiguration.titlePosition = .stacked
// Sets the title to System 18
itemConfig.title.font = .systemFont(ofSize: 18)
// Sets the title number of lines to 1
itemConfig.title.numberOfLines = 1
// Sets the title color to black
itemConfig.title.textColor = .black
// Sets the title is hidden to false
itemConfig.title.isHidden = false

// Updates the title configuration
config.itemView = itemConfig

// Must set the viewConfiguration property to apply the changes
feedVC.viewConfiguration = config
```

#### Video Player Customizations

Video player behavior such as the sharing functionality can also be customized using `VideoPlayerContentConfiguration`.

```
let feedVC = VideoFeedViewController()

// Gets the default configuration
var config = feedVC.viewConfiguration

// Gets the player content configuration
var playerConfig = config.playerView

// Show or hide the sharing button
playerConfig.shareButton.isHidden = true

// Add UIActivity instances specific to your app
playerConfig.shareButton.behavior.applicationActivities = customApplicationActivities()

// Exclude certain UIActivity Types
playerConfig.shareButton.behavior.excludedActivityTypes = [UIActivity.ActivityType.markupAsPDF]

// Updates the title configuration
config.playerView = playerConfig

// Must set the viewConfiguration property to apply the changes
feedVC.viewConfiguration = config
```

### Content Sources

The enum VideoFeedContentSource defines the different sources that can be used to populate the video feed. The content source must be specified when the VideoFeedViewController is instantiated; `VideoFeedViewController(source: .discover)`. By default the feed will use the .discover content source. 

Alternatively, a channel feed can be used as a source by using the .channel and passing in a valid channel id; `VideoFeedViewController(source: .channel(channelID: "<Channel ID>"))`. The source can also specify a playlist ID linked to that specific channel.

```
let feedVC = VideoFeedViewController(source: .channelPlaylist(channelID: "", playlistID: ""))
```

### Ad Support

Popular 3rd party ad SDKs can be used alongside the FireworkVideoSDK to perform client side ad insertion within the Firework Video Player. These 3rd party SDKs require a supporting library in order to work. Please review the list below and checkout the repo for more detailed instructions.

  - Google Ad Mob SDK - Requires [FireworkVideo GAM Supporting Library](https://github.com/loopsocial/firework_ios_sdk_gam_support) 
  - Google IMA SDK - Requires [FireworkVideo Google IMA Supporting Library](https://github.com/loopsocial/firework_ios_sdk_google_ima_support)

### Troubleshooting

#### SDK Intialization

`FireworkVideoSDK.initializeSDK` accepts an optional `delegate` parameter that can receive any errors the SDK outputs during setup. This delegate can be any class that conforms to the `FireworkVideoSDKDelegate` protocol.  See example code below that uses  `AppDelegate` to print any errors to console.

```
import UIKit

/// Add the dependency SDK
import FireworkVideo

@main
class AppDelegate: UIResponder, UIApplicationDelegate, FireworkVideoSDKDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        FireworkVideoSDK.initializeSDK(delegate: self)
        return true
    }
    
    func fireworkVideoDidLoadSuccessfully() {
        print("FireworkVideo loaded successfully.")
    }
    
    func fireworkVideoDidLoadWith(error: FireworkVideoSDKError) {
        switch error {
        case .missingAppID:
            print("FireworkVideo loaded with error due to missing FireworkVideo app ID.")
        case .authenticationFailure:
            print("FireworkVideo loaded with error due to authentication failure.")
        @unknown default:
            break
        }
    }
```

#### Video Feeds

`VideoFeedViewController` exposes an optional `delegate` property that can receive any errors the SDK outputs when loading the video feed or a success when the video feed loaded successfully.

```
/// Add the dependency SDK
import FireworkVideo

class VideoFeedService: VideoFeedViewControllerDelegate {

    func videoFeedDidLoadFeed(_ viewController: FireworkVideo.VideoFeedViewController) {
        print("Video feed on view controller \(viewController) loaded.")
    }

    func videoFeed(_ viewController: FireworkVideo.VideoFeedViewController, didFailToLoadFeed error: FireworkVideo.VideoFeedError) {
        if case let FireworkVideo.VideoFeedError.contentSourceError(contentSourceError) =  error {
            print("Video feed on view controller \(viewController) loaded with error \(contentSourceError.errorDescription).")
        } else if case let FireworkVideo.VideoFeedError.unknownError(underlyingError) = error {
            print("Video feed on view controller \(viewController) loaded with error \(underlyingError.localizedDescription).")
        }        
    }
}
```

#### Missing or Empty Video Feeds

In the event the feed is empty or the SDK encounters an error when downloading videos, create a new instance and replace the existing instance in your view hierarchy. If the video feed source configured for the view controller does not have videos available, you may need to supply an alternative source when creating the new instance.

If `VideoFeedViewController` is a child view controller, make sure to call the view controller containment lifecycle methods when removing it from your apps view hierarchy to ensure proper cleanup.

```
/// Removing videoFeedViewController from it's parent view controller

videoFeedViewController.willMove(toParent: nil)
videoFeedViewController.view.removeFromSuperview()
videoFeedViewController.removeFromParent()
```
