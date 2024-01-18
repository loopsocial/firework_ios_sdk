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

  - iOS 13+
  - Xcode 14+
  - Swift 5.3+

## How to add FireworkVideo to your Xcode project?

FireworkVideo can be added as a Swift binary package using Swift Package Manager or it can be imported manually as framework. Instructions for both installation methods are below.

### Importing Using Swift Package Manager

In your Xcode project, select File > Swift Packages > Add Package Dependency and enter the following URL: `https://www.github.com/loopsocial/firework_ios_sdk/`

> If you are new to Xcode's Swift Pacakage Manager integration, please refer to Apple's documentation on [Adding a Package Dependency to Your App](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app)

Select Version > Up to Next Major > 1.9.0.

#### Supporting Libraries
The SDK has many supporting libraries that can be easily added to your project. Here is a list of currently supported libraries.

  - `FireworkMultiHostStreaming`
  - `FireworkLowLatencyStreaming`
  - `FireworkGoogleIMA`
  - `FireworkGoogleAdManager`

### Importing Using Cocoapods

In your Podfile add FireworkVideo: `pod FireworkVideo` and then run `pod install`.

#### Supporting Libraries
The SDK has many supporting libraries that can be easily added to your project.

  - Multihost Streaming - Add `pod 'FireworkVideo/FireworkMultiHostStreaming`
  - Low Latency Streaming - Add `pod 'FireworkVideo/FireworkLowLatencyStreaming`
  - Interactive Media Ads - Add `pod 'FireworkVideo/FireworkInteractiveMediaAds`
  - Google Ad Manager - Add `pod 'FireworkVideo/FireworkGoogleAdManager`

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

##### Shopping Sample Code

Within the sample app project there is a second app `FireworkVideoShoppingSample` that contains samples for integrating with `FireworkVideoShopping`.
Please read-over the shopping sample code documentation located in the `FireworkVideoSample/FireworkVideoShoppingSample/README.md` for setup tips.

#### Initialization

Before using any components video components are used you must initialize `FireworkVideo`.

Start by importing the SDK into your App Delegate. Then initialize the Firework Video SDK in the App Delegate method `application(:, didFinishLaunchingWithOptions:) -> Bool`.

```swift
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
  
```swift
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

```swift
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
// Specifies if the sposored label should be shown on thumbnails
itemConfig.sponsored.isHidden = false
// Specifies if autoplay is enabled on thumbnails. 
itemConfig.autoplay.isEnabled = true

// Updates the title configuration
config.itemView = itemConfig

// Must set the viewConfiguration property to apply the changes
feedVC.viewConfiguration = config
```

#### Video Player Customizations

Video player behavior such as the sharing functionality can also be customized using `VideoPlayerContentConfiguration`.

```swift
let feedVC = VideoFeedViewController()

// Gets the default configuration
var config = feedVC.viewConfiguration

// Gets the player content configuration
var playerConfig = config.playerView

// Show or hide the sharing button
playerConfig.shareButton.isHidden = true

// Show or hide the mute button
playerConfig.muteButton.isHidden = true

// Show or hide the playback button
playerConfig.playbackButton.isHidden = true

// Show or hide the replay badge. Default is hidden
playerConfig.replayBadge.isHidden = false

// Show or hide the playerView replay badge. Default is hidden
playerConfig.playerView.replayBadge.isHidden = false

// Set the delay of the CTA button. Using 0 will result in no delay.
playerConfig.ctaButton.behavior.delay = .constant(0) 

// Set the highlight delay of the CTA button. Using 0 will result in no delay and the button will be highlighted immediately.
playerConfig.ctaButton.behavior.highlightDelay = .constant(0) 

// Adjusts the width of the CTA button by using one of the three available cases in the VideoPlayerCTAWidth enumeration
playerConfig.ctaButton.width = .fullWidth

// Show or hide the countdown timer. Default is hidden
playerConfig.countdownTimerConfiguration.isHidden = false

// Add UIActivity instances specific to your app
playerConfig.shareButton.behavior.applicationActivities = customApplicationActivities()

// Exclude certain UIActivity Types
playerConfig.shareButton.behavior.excludedActivityTypes = [UIActivity.ActivityType.markupAsPDF]

// Player launch behaviors
// Using muteOnFirstLaunch will mute all videos when the player is launched for the first time
// After the user unmutes the video the behavior will be retained across video launches.
// Note: If the mute button is hidden this option is ignored
playerConfig.onFirstLaunch = .muteOnFirstLaunch 

// Updates the player configuration
config.playerView = playerConfig

// Must set the viewConfiguration property to apply the changes
feedVC.viewConfiguration = config
```

#### Ad Badge Customizations
Ad Badge property such as textColor can be customized using `AdBadgeConfiguration`, this configuration will be applied to all feeds and player

```swift
let feedVC = VideoFeedViewController()

// Gets the default configuration
var config = feedVC.viewConfiguration

// Gets the player content configuration
var adBadgeConfig = config.adBadge

// Sets the ad badge text color to white
adBadgeConfig.textColor = .white

// Sets the ad badge background color to translucent
adBadgeConfig.backgroundColor = UIColor(white: 0, alpha: 0.3)

// Sets the ad badge text to "Ad"
adBadgeConfig.badgeText = .ad

// Updates the title configuration
config.adBadge = adBadgeConfig

// Must set the viewConfiguration property to apply the changes
feedVC.viewConfiguration = config
```

#### Live Stream Event Callbacks

Live stream events can be observed by assgning a receiver as the `FireworkLiveStreamEventDelegate`. This will provide different methods that will be invoked at the time of each event.

```swift
// Assign a delegate
FireworkVideoSDK.eventTracking.liveStreamEventDelegate = // Object to receive live stream events
``

#### Custom Call-To-Action Button Handling

Custom Call-To-Action button handling is done via the `FireworkVideoCTADelegate` protocol. This provides control over what occurs when a call-to-action button is tapped.

  1. Set the delegate:
```swift
FireworkVideoSDK.ctaDelegate = self
```
  2. Confirm to protocol:
```swift
func handleCustomCTAClick(_ viewController: PlayerViewController, url: URL) -> Bool {
    // Your custom action code here...
    return true
}
```

### Feed Content Sources

The enum `VideoFeedContentSource` defines the different sources that can be used to populate the video feed. The content source must be specified when the VideoFeedViewController is instantiated; `VideoFeedViewController(source: .discover)`. By default the feed will use the `.discover` content source. 

Other content sources include

#### Channel

Displays content from the specified channel id. 

> Note: The user will only see videos they have not viewed before. If the user has viewed all the videos for a channel similar videos will automatically be provided.

```swift
let channelID = "<Channel ID>"
let feedVC = VideoFeedViewController(source: .channel(channelID: channelID))
```

#### Channel Playlist

Displays content from the specified playlist id. 

> Note: Unlike the [channel content source](#channel), only content in the playlist will be shown to the user.

```swift
let channelID = "<Your Channel ID>"
let playlistID = "<Playlist ID>"
let feedVC = VideoFeedViewController(source: .channelPlaylist(channelID: channelID, playlistID: playlistID))
```

#### Playlist Group

Displays playlists from the specified playlist group id. 

```swift
let playlistGroupID = "<Playlist ID>"
let feedVC = VideoFeedViewController(source: .playlistGroup(groupID: playlistGroupID))
```

#### Dynamic Content

Displays dynamic content based on the provided channel id and content parameters. 

```swift
let channelID = "<Channel ID>"
let parameters: DynamicContentParameters = ["<cohort key>": ["<cohort value 1>", "<cohort value 2>"]]
let feedVC = VideoFeedViewController(source: .dynamicContent(channelID: channelID, parameters: parameters))
```

#### Hashtag Playlist

Displays content based on the provided channel id and the hashtag expression.

```swift
let channelID = "<Channel ID>"
let singleHashtag = "dogs"
let feedVC = VideoFeedViewController(source: .hashtagPlaylist(channelID: channelID, filterExpression: singleHashtag))
```

Or a more advanced hashtag expression can be used to fine tune the results

```swift
let channelID = "<Channel ID>"
let filterExpression = "(and sport (or food comedy))"
let feedVC = VideoFeedViewController(source: .hashtagPlaylist(channelID: channelID, filterExpression: filterExpression))
```

#### Single Video or Live Stream

Displays a single video or live stream content.

```swift
let videoOrLiveStreamID = "<Video or LiveStream ID>"
let feedVC = VideoFeedViewController(source: .singleContent(videoOrLiveStreamID: videoOrLiveStreamID))
```

### Story Block

Displaying a Story Block can be done by using a `StoryBlockViewController` either programmatically or in a storyboard. 

#### Programmatic

  1. Import FireworkVideo 
  2. Create a new `StoryBlockViewController`
  3. Embed the instantiated `StoryBlockViewController`
  
```swift
import FireworkVideo

class ViewController: UIViewController {

    func embedFeedInViewController() {
        let storyBlockVC = StoryBlockViewController()
        self.addChild(storyBlockVC)
        self.view.addSubview(storyBlockVC.view)
        storyBlockVC.view.frame = self.view.bounds
        storyBlockVC.willMove(toParent: self)
    }
    
}
```

#### Story Block Content Source

The enum `StoryBlockContentSource` defines the different sources that can be used to populate the story block. The content source must be specified when the `StoryBlockViewController` is instantiated; `StoryBlockViewController(source: .discover)`. By default, the feed will use the `.discover` content source. 

Other content sources include

#### Channel

Displays content from the specified channel id. 

> Note: The user will only see videos they have not viewed before. If the user has viewed all the videos for a channel similar videos will automatically be provided.

```swift
let channelID = "<Channel ID>"
let feedVC = StoryBlockViewController(source: .channel(channelID: channelID))
```

#### Channel Playlist

Displays content from the specified playlist id. 

> Note: Unlike the [channel content source](#channel), only content in the playlist will be shown to the user.

```swift
let channelID = "<Your Channel ID>"
let playlistID = "<Playlist ID>"
let feedVC = StoryBlockViewController(source: .channelPlaylist(channelID: channelID, playlistID: playlistID))
```

#### Dynamic Content

Displays dynamic content based on the provided channel id and content parameters. 

```swift
let channelID = "<Channel ID>"
let parameters: DynamicContentParameters = ["<cohort key>": ["<cohort value 1>", "<cohort value 2>"]]
let feedVC = StoryBlockViewController(source: .dynamicContent(channelID: channelID, parameters: parameters))
```

#### Hashtag Playlist

Displays content based on the provided channel id and the hashtag expression.

```swift
let channelID = "<Channel ID>"
let singleHashtag = "dogs"
let storyBlock = StoryBlockViewController(source: .hashtagPlaylist(channelID: channelID, filterExpression: singleHashtag))
```

Or a more advanced hashtag expression can be used to fine tune the results

```swift
let channelID = "<Channel ID>"
let filterExpression = "(and sport (or food comedy))"
let storyBlock = StoryBlockViewController(source: .hashtagPlaylist(channelID: channelID, filterExpression: filterExpression))
```

#### Single Video or Live Stream

Displays a single video or live stream content.

```swift
let videoOrLiveStreamID = "<Video or LiveStream ID>"
let storyBlock = StoryBlockViewController(source: .singleContent(videoOrLiveStreamID: videoOrLiveStreamID))
```

#### Story Block Configuration

`StoryBlockViewController` provides a `StoryBlockConfiguration` API to configure the UI elements of the video player. A story block's video player can be configured differently when displaying in embedded mode or when expanded to full screen. Configurations for embedded mode are automatically propagated to their full screen counterparts. Please refer to API documentation for more details.   

```swift
var configuration = StoryBlockConfiguration()

// 1. Embedded mode
// 1.1 Configuring the sharing URL
configuration.shareButton.behavior.baseURL = URL(string: "your.custom.url")

// 1.2 Configuring CTA
configuration.ctaButton.contentConfiguration.backgroundColor = <Color>
configuration.ctaButton.contentConfiguration.textColor = <Color>
configuration.ctaButton.contentConfiguration.font = <Font>

// 1.3 Configuring Replay badge visibility
configuration.replayBadge.isHidden = false

// 1.4 Show or hide the countdown timer. Default is hidden
configuration.countdownTimerConfiguration.isHidden = false

// 2. Full Screen Configuration using `fullScreenPlayerView` property
configuration.fullScreenPlayerView.playerStyle = .fit

// Setting configuration
storyBlock.viewConfiguration = configuration
```

### Shopping

FireworkVideoSDK contains a `shopping` property that enables video shopping integration. There are two main points of integration both located on the `FireworkVideoShopping` type.

#### FireworkVideoShoppingDelegate

Assign a `FireworkVideoShoppingDelegate` to receive important shopping events. 

```swift
FireworkVideoSDK.shopping.delegate = <Your delegate>
```

The shopping lifecycle events provide opportunities to customize the product views, hydrate product information and handle when a user adds a product variant to the cart.

##### Shopping View Configuration 

When the `fireworkShopping(_:willDisplayProductInfo:forVideo:)` method is called it gives the host app a chance to configure the view that will be displayed.
Similar to how view configurations work on the `VideoFeedViewController` the properties are value types and must be reassigned to the `configurator` before the changes will be applied.

The following items can be configured:

  1. Shopping Cart icon 
    1. isHidden - Important: When setting this value to `false` ensure the `cartProvider` is added.
    2. indicator - (Used to indicate to the user that there is an item in their cart)
      1. isHidden - if the  indicator is hidden or not
  2. Add to button 
    1. Button color
    2. Button font
    3. Button text color
  3. Product card
    1. Appearance mode
    2. Product card item text 

For more detailed examples see the Sample App Code.

##### Product Hydration

The `fireworkShopping(_:updateDetailsForProducts:forVideo:_:)` method will be called when a video will be shown that contains products. It is at this point when the 
host app will be able to update the associated product information.

See the Sample App Code for examples of how to hydrate with Shopify.

##### Handle Add to Cart

The `fireworkShopping(_:addProductVariantToCart:fromVideo:_:)` method is called when the user has selected the "Add to cart" button and will pass the ids of the product and variant of the selected item. 
The `fireworkShopping(_:productVariantCTASelected:fromVideo:_:)` method is called when the user has selected the CTA Button ("Add to cart"/"Shop now") and will pass the ids of the product and variant of the selected item. 

The host app must call the `ctaCompletionHandler` to inform the next action to perform.

  - `showEmbeddedCart` - When sepecifying this action the SDK will request a `CartViewController` from the `FireworkVideoSDK.shopping.cartProvider`; see [Providing an embedded cart view](#providing-an-embedded-cart-view) for more details. 
  - `dismissWithFeedback` - When specifying this action the SDK will dismiss the Product summary drawer and display a toast message to the user.
  - `feedbackOnly` - When specifying this action the SDK will only display a toast message to the user.
  - `none` - When specifying this option the SDK won't perform any action.

> **Note:** If no action is provided within 2 seconds the SDK will assume the item was not successfully added.

**Important:** it is at this point when the host app should add the item to the user's cart as they have indicated intent to buy this product.

##### Handle Shopping Cart Action

The host app has the ability to modify the shopping cart action using one of the enumerated cases from ShoppingCartAction.

- `showEmbeddedCart` - Default action. This option will navigate to the custom `CartViewController` when the user is on the product detail screen. However, please note that for this case to work, the `FireworkVideoShopping.cartViewControllerProvider` must not be nil.
- `custom` - By choosing this action, the SDK will invoke the `fireworkShopping(_:didTapCartIconForVideo:)` delegate function.

#### Providing an embedded cart view

The host app can embed their own custom cart view which will be displayed directly within the Firework Video Player.
This custom cart view can be shown within the Firework Video Player after the following actions occur:

  - User clicks cart icon - The host app must setup the configuration to show a shopping icon; see [Shopping View Configuration](#shopping-view-configuration) for more details.
  - Host app returns `showEmbeddedCart` as the `AddToCartAction` - This is sequence occurs after the user selects "Add to cart". 

The host app **must** supply a mechanism that conforms to `CartViewProviding` in order to provide a `CartViewController`. A provider must be assigned on the `FireworkVideoSDK.shopping.cartProvider` property.
If no provider is set the actions above will be replaced with these actions; respectively:

  - User clicks cart icon - Nothing.
  - Host app returns `showEmbeddedCart` as the `AddToCartAction` - SDK treats this as a success and will use the `dismissWithFeedback` with `success`.

The `CartViewController` has a `drawerController: DrawerControllerRepresentable` property which provides a func to close the cart view container.

#### Purchase tracking
The host app can record a purchase which will help get a full picture of the user journey flow.In order to do this, call `FireworkVideoSDK.trackPurchase` whenever the purchase happens.

```
let totalPurchaseValue: Double = // The total value of the purchase
FireworkVideoSDK.trackPurchase(
            orderID: "<Order ID of User Purchase>",
            value: totalPurchaseValue,
            currencyCode: Locale.current.currencyCode,
            countryCode: Locale.current.regionCode,
            [
                "additionalKey1": "additionalValue1",
                "additionalKey2": "additionalValue2",
                "additionalKey3": "additionalValue3"
            ]
        )
```

### Force Refresh

A `VideoFeedViewController` can be hard refreshed by calling the `refresh()` method on the instance that should be refreshed. This functionality is useful if your feed is embedded along with other components that are also updated and you support features like pull to refresh.

### Share Link

You can customize the shared URL. The feature can be used, if you want share URL to be a universal link or a deeplink link so that when a user clicks on it, it can be opened in your application. 

To customize a share url, just provide a base url.
```swift
config.playerView.shareButton.behavior.baseURL = URL(string: "<Base URL for your Universal Link or Deeplink>")
```

#### Handling Share Link

After your app receives a universal link or deeplink, once your app is ready to present the video player you can use one of two methods to present the player

```swift
let viewController = // The view controller that should present the video player
let url = // The received url that contains the `fwplayer` query parameter
// Optionally a custom player config can be applied to the presented video player
let feedConfig: VideoFeedContentConfiguration = // Custom video player configuration
VideoFeedViewController.openVideoPlayer(with: url, feedConfig, viewController) { result in /* Called after successfully presenting the video player */ }

// Or you can pass the value of the `fwplayer` query parameter directly into method

let paramValue = // The value of the `fwplayer` query parameter
VideoFeedViewController.openVideoPlayer(with: paramValue, viewController) { result in /* Called after successfully presenting the video player */ }

```

> **Note** If a custom `VideoFeedContentConfiguration` is not passed into the `openVideoPlayer` method the default configuration will be used.

### Picture in Picture (PiP)

This feature allows the user to watch media while the application is in a backgrounded state. While in background mode a video will display in a floating, resizable window. 

To enable PiP functionality, you’ll need to add Background Modes capability via Signing & Capabilities in your project settings. More information about this can be found here: [Apple Documentation](https://developer.apple.com/documentation/avfoundation/media_playback/configuring_the_audio_playback_of_ios_and_tvos_apps) 

> **Note**  To use Picture in Picture, we configure the app to support background audio playback. See [Configuring the Audio Playback of iOS and tvOS Apps](https://developer.apple.com/documentation/avfoundation/media_playback/configuring_the_audio_playback_of_ios_and_tvos_apps) for more details.

Once the background mode is enabled, moving from an active state to a background state will immediately trigger the Picture In Picture functionality. PictureInPictureController is responsible for handling all of this functionality. PictureInPictureController retains a strong reference of AVPictureInPictureController. AVPictureInPictureController is a controller that responds to user-initiated Picture in Picture playback of video in a floating, resizable window.


```
   let feedVC = VideoFeedViewController(
     layout: VideoFeedHorizontalLayout(),
     source: source,
     adConfiguration: adConfiguration)
     pipViewControlelr = PictureInPictureController(videoFeed: feedVC)
     
```

#### Enhanced APIs

The `PictureInPictureController` offers serveral enhanced APIs that remove the burden of managing the `PictureInPictureController` instance.

##### Enabling PiP

A new property, `isPictureInPictureEnabled`, was added to `VideoFeedViewController` and `StoryBlockViewController`. Set this property to `true` and `FireworkVideoSDK` will manage the resources on your behalf. 

##### Programmatically starting and stopping

The `PictureInPictureController` has new static methods which allows to easily start and stop picture in picture mode. There are 2 sets of methods for both start and stop operations.

The first set allows for starting and stopping of picture in picture with a feedID; `start(with feedID: String) throws` and `stop(with feedID: String) throws`. This set of APIs allows for you to start or stop specific feeds.

> These APIs will throw when trying to start or stop a feed which does not have picture in picture enabled first.

The second set allows for starting and stopping of picture in picture of any "eligible" feed; `start() throws` and `stop() throws`. This set of APIs allows for you to quickly start any feed that is eligible to enter picture in picture. Or stop any currently active picture in picture.

> Eligibility is determined by many factors and is subject to change in future releases.

### Ad Support

Popular 3rd party ad SDKs can be used alongside the FireworkVideoSDK to perform client side ad insertion within the Firework Video Player. These 3rd party SDKs require a supporting library in order to work. Please review the list below and checkout the repo for more detailed instructions.

  - Google Ad Mob SDK - Requires [FireworkVideo GAM Supporting Library](https://github.com/loopsocial/firework_ios_sdk_gam_support) 
  - Google IMA SDK - Requires [FireworkVideo Google IMA Supporting Library](https://github.com/loopsocial/firework_ios_sdk_google_ima_support)

### Troubleshooting

#### Common Mistakes

This section contains common mistakes that can lead to a `FeedViewController` to not behave correctly.

##### View Controller Lifecycle Management 

Properly managing a view controller's lifecycle is easily overlooked because Xcode does not strictly enforce this. So when a subtle issue does arise the root cause may not
be all that obvious and is hard to debug.

###### Attaching a View Controller

When add a view controller as a child of another view controller it is important to call the correct methods so that it will start to receive the normal view controller 
life cycle events.

The steps for attaching a child view controller are

  1. Add child to parent view controller
  2. Add add root view from child view controller to some view in the parent view controller
  3. Set constraints on child view controller view
  4. Inform the child view controller that it has been moved onto the parent view controller

The last step is really important and also overlooked as it will inform the child view controller that it that it can begin laying out its components.

Here is an example

```swift
let feedVC = //... 

parentViewController.addChild(feedVC)

parentViewController.view.addSubView(feedVC.view)

feedVC.view.translatesAutoresizingMaskIntoConstraints = false

// ... Set feed constraint
NSLayoutConstraint.activate(
    constraints
)

feedVC.didMove(toParent: parentViewController)
```

###### Detaching a View Controller

Similar to attaching a view controller we must also detach a view controller. Detaching is more straightforeward.

The steps to detach

  1. Inform the child view controller it will be moving from the parent view controller
  2. Remove the child view controller from the parent
  3. remove the child view controller view from super view

```swift
feedVC.willMove(toParent: nil) // Let's the child VC know it will be detached from the parent

feedVC.removeFromParent()

feedVC.view.removeSuperview()
```

##### Attaching a View Controller in a Table or Collection Cell View

Often times it is desirable to display a horizontal scrolling feed within a UITableView or UICollectionView. 

There are two lifecycle events on the UITableView and UICollectionView that we can use to attach and deatch the FeedViewController. For details on attaching and detaching 
see View Controller Lifecycle Management section above.

The Table and Collection views have a delegate method that is called before a cell is going to be shown on a screen; table/collectionView(_:willDisplayCell:at:). When this
method is called it is a good time to attach the feed view controller.

Conversely, the Table and Collection views have a method that is called just after a cell has left the screen; table/collectionView(_:didEndDisplayingCell:at:). WHen this
method is called it is a good time to detach the feed view controller.

#### Safe Area Guides

Because the `VideoFeedViewController` is self contained it must be able to avoid safe areas. As such the 
`VideoFeedViewController` attaches its child view controller to the `safeAreaGuide` of its view. 

There are some scenarios that may cause odd behaviors when the `VideoFeedViewController` is laid out.

##### Sibling Views

This scenario occurs when a the `VideoFeedViewController` is attached to a `UIScrollView`, `UICollectionView` 
or `UITableView` which has a sibling view. The safe area guides will propagate down to the `VideoFeedViewController` 
when the `UIScrollView`, `UICollectionView` or `UITableView` is not the first child in the view hierarchy. 

Typically, `UIScrollView`, `UICollectionView` or `UITableView` respects the safe area by adjusting the content size to
allow the content to scroll above the safe area. Thus, UIKit does not pass the guides down into views that are within
the content view of the `UIScrollView`. However, behavior suggests there is a bug within the UIKit logic.

**Workarounds**

To get around this issue simply make sure the `UIScrollView`, `UICollectionView` or `UITableView` is the first sibling
of the parent view. In story board simply drag the view in question to the top of the subclasses. Or, if you are building
views programmatically simply make sure to `view.addSubview()` the view in question first.

#### SDK Initialization

`FireworkVideoSDK.initializeSDK` accepts an optional `delegate` parameter that can receive any errors the SDK outputs during setup. This delegate can be any class that conforms to the `FireworkVideoSDKDelegate` protocol.  See example code below that uses  `AppDelegate` to print any errors to console.

```swift
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

```swift
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

```swift
/// Removing videoFeedViewController from it's parent view controller

videoFeedViewController.willMove(toParent: nil)
videoFeedViewController.view.removeFromSuperview()
videoFeedViewController.removeFromParent()
```


## Data Reporting

To receive video playback events, conform to the Protocol `FireworkVideoPlaybackDelegate`, see file FireworkVideoPlaybackDelegate.swift.

List of video playback events:

```swift
    /// Called when a video appears on the screen but the video playback has not started
    /// - Parameter videoPlayback: The details of the video playback
    func fireworkVideoDidRecordImpression(_ videoPlayback: VideoPlaybackDetails)

    /// Called when a video has paused playback
    /// - Parameter videoPlayback: The details of the video playback
    func fireworkVideoDidPause(_ videoPlayback: VideoPlaybackDetails)

    /// Called when a video has resumed playback
    /// - Parameter videoPlayback: The details of the video playback
    func fireworkVideoDidResume(_ videoPlayback: VideoPlaybackDetails)

    /// Called when a video has started playing
    /// - Parameter videoPlayback: The details of the video playback
    func fireworkVideoDidStartPlaying(_ videoPlayback: VideoPlaybackDetails)

    /// Called when the first quarter of the video has been played
    /// - Parameter videoPlayback: The details of the video playback
    func fireworkVideoReachedFirstQuartile(_ videoPlayback: VideoPlaybackDetails)

    /// Called when the first half of the video has been played
    /// - Parameter videoPlayback: The details of the video playback
    func fireworkVideoReachedMidPoint(_ videoPlayback: VideoPlaybackDetails)

    /// Called when the third quarter of the video has been played
    /// - Parameter videoPlayback: The details of the video playback
    func fireworkVideoReachedThirdQuartile(_ videoPlayback: VideoPlaybackDetails)

    /**
     Called when the video playback has completed.
    
     There are many actions that can cause a video to finish playback including:
       - User swiping to the next or previous video
       - User dismissing the current video
       - Video reaches end of playback and either advances to the next video or loops the beginning of the current video
     
     - Parameter videoPlayback: The details of the video playback
    */
    func fireworkVideoDidFinishPlaying(_ videoPlayback: VideoPlaybackDetails)

    /// Called when the user has tapped on the CTA button that appeared during the video playback
    func fireworkVideoDidTapCTAButton(_ videoPlayback: VideoPlaybackDetails)

    /// Called when the user has tapped on the share button that appeared during the video playback
    func fireworkVideoDidTapShareButton(_ videoPlayback: VideoPlaybackDetails)

    /// Called when an ad video has started playing
    /// - Parameter videoPlayback: The details of the video playback
    func fireworkVideoDidStartPlayingAd(_ videoPlayback: VideoPlaybackDetails)

    /// Called when the ad video playback has completed.
    /// - Parameter videoPlayback: The details of the video playback
    func fireworkVideoDidFinishPlayingAd(_ videoPlayback: VideoPlaybackDetails)
```
    
To receive feed related events, conform to the Protocol `FireworkVideoFeedDelegate`, see file FireworkVideoFeedDelegate.swift.

List of feed events:

```swift
    /// Called when the a video thumbnail is tapped by the user
    /// - Parameter eventDetails: The details of the feed event
    func fireworkVideoDidTapThumbnail(_ eventDetails: FeedEventDetails)
```
