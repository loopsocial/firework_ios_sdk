# FireworkVideo

## About

FireworkVideo is a library to integrate video feeds from Firework - a short form video platform - into your iOS app.

## Setup Prerequisites

To integrate FireworkVideo into your application, you have to register your application with Firework platform and get unique FireworkVideo client ID. To get the client ID 

- [X] Provide your application's bundle identifier or package name to the business team / engineering team you are co-ordinating with.
- [X] We will email you the client ID, follow the setup steps below under Firework Client ID to include it in your app.

The client ID is used to authenticate your application with the server. Authentication will fail if you use wrong client ID.

## Requirements

FireworkVideo is compatible with:

  - iOS 12 or greater.
  - Xcode 12.3 or greater.
  - Swift 5.3 or greater.

## How to add FireworkVideo to your Xcode project?

FireworkVideo can be added as a Swift binary package using Swift Package Manager or it can be imported manually as framework. Instructions for both installation methods are below.

### Importing Using Swift Package Manager

In your Xcode project, select File > Swift Packages > Add Package Dependency and enter the following URL: `https://www.github.com/loopsocial/firework_ios_sdk/`

> If you are new to Xcode's Swift Pacakage Manager integration, please refer to Apple's documentation on [Adding a Package Dependency to Your App](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app)

Select Version > Up to Next Major > 0.1.0.

### Importing FireworkVideo Framework Manually

* Clone the SDK repo located at `https://www.github.com/loopsocial/firework_ios_sdk/`

* Download the [SDK binary](https://www.github.com/loopsocial/firework_ios_sdk/releases/download/v0.1.0/FireworkVideo-v0.1.0.xcframework.zip) and unzip if needed.

* Drag the unzipped `FireworkVideo.xcframework` into the Xcode project navigator and drop it at root of your project. Make sure `Copy items if needed` checkbox is selected in the confirmation dialog. Check to make sure your project directory now has `FireworkVideo.xcframework` in it and it is visible and linked in your Xcode project navigator.

* In your apps Project pane select your app Target > Build Phases, click the + button, and add a Copy Files step. Select `Frameworks` as the destination and click the + within the Copy Files step and select FireworkVideo.xcframework. Your Copy Files step should look like below. 

![Copy Files Step](https://github.com/loopsocial/firework_ios_sdk/blob/main/Resources/manual_installation_copy_files_step.png?raw=true)

### Firework Client ID

Include the client ID in your app `Info.plist` file using the key `FireworkVideoClientID`, see image below. If the client ID is not included or is included under a differently spelled key, the SDK will return an error. See Troubleshooting for more details.

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

### Troubleshooting

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
        case .missingClientID:
            print("FireworkVideo loaded with error due to missing FireworkVideo client ID.")
        case .authenticationFailure:
            print("FireworkVideo loaded with error due to authentication failure.")
        @unknown default:
            break
        }
    }
```

## API Changes

**You're strongly encouraged you to use the latest available FireworkVideo version. Versions prior to 1.0 may contain breaking API changes and behaviors. Please provide feedback and report any bugs to the business and engineering team you're working with.**
