## CHANGELOG

## [1.16.0]

### Changed
- `PlayerViewController` method `pause()` can now be called before the video playback begins
- The `PlayerViewController` is now a wrapper of the underlying player designed to avoid retain cycles that may be caused by integrating with one of the many SDK delegates. This new view controller has very limited functionality (see CTA handler header docs for more details)

### Fixed
- Optimized thumbnail image fetching

## [1.15.0]

### Added

- Product price labels show/hide state controlled by GraphQL Product.hidePrice boolean value
- Added configuration for Product Card UI, including size, background color, rounded corners, etc.
- Introducing a new property, `logoConfiguration`, in the `VideoPlayerContentConfiguration` that enables users to define the option to be used for displaying the logo instead of the ellipsis.
    `public var logoConfiguration = VideoPlayerLogoConfiguration()`

### Deprecated

- PriceConfiguration 'isHidden' local configuration field


## [1.14.0]

### Changed

- `VideoFeedViewController` underlying `UICollectionView` is now dynamically constrained to `safeAreaLayoutGuide` based the type of `VideoFeedLayout` used. `VideoFeedHorizontalLayout` will not constrain to `safeAreaLayoutGuide` whereas `VideoFeedGidLayout` will.
- Centered video detail options

## [1.13.0]

### Added

- Ability to customize product card by changing the corner radius, hiding price labels, and hiding CTA button.

### Changed

- Dropped support for iOS 12.0 and below.

## [1.12.0]

### Added

- New product card provided in short video
- New content source for single video or livestream for Video Feed and Storyblock: 
    `VideoFeedContentSource.singleContent(videoOrLiveStreamID: EncodedID)` 
    `StoryBlockContentSource.singleContent(videoOrLiveStreamID: EncodedID)`
- New API to configure `StoryBlockViewController`:
    `public var viewConfiguration: StoryBlockConfiguration { get set }` 
- Introducing a new property, `titleConfiguration`, in the `VideoDetailContentConfiguration` that enables users to define the visibility of the video title on the detail section page.
    `public var titleConfiguration = VideoDetailTitleConfiguration()`
- New product detail page
- Ability to define custom navigation handling when user taps on product card.
- Ability to customize the images of the full screen player buttons namely: video detail button, mute/unmute button, close button, play/pause button.

## [1.11.0]

### Added
- Support Poll in short videos
- Support Questions in short videos
- Support SKU playlist. Add `skuPlaylist` in `VideoFeedContentSource`

### Fixed
- Mute Button Parity Issues
- Number on the Un-read chat messages in live stream doesn't display properly 
- User is not able to edit username on the live stream videos

## [1.10.0]

### Added

- `FireworkLowLatencyStreaming` SPM support
- `FireworkGoogleIMA` SPM support
- `FireworkGoogleAdManager` SPM support (Supports Google Ad Manager integrations)

- New `width` property on `VideoPlayerCTAConfiguration` that allows users to adjust the size of the CTA button. This property is defined as a public enumeration VideoPlayerCTAWidth, which has three possible cases:

`fullWidth`: This case allows users to set the button width to be the full width of the view, with leading and trailing values of 16.
`compact`: This case sets the button width to be 50% of the view width, with leading and trailing values of 16. The button content size will always take priority over the percentage width.
`sizeToFit`: This case sets the width of the button to fit the size of the button text, while respecting the leading and trailing values of 16.

- VAST tracking for non-autoplayed ads in feed thumbnails.
- support 'Select Replay' feature which allows us to choose from which moment users will see the video being played when opening the live stream.

- Introducing a new `cartAction` property in the `FireworkVideoShopping` that enables users to define their own custom action when the shopping cart is selected.

## [1.9.0]

### Added

- `start()` and `stop()` APIs on `PictureInPictureController` to start and stop any eligible player without feedID parameter 
- VAST tracking for autoplayed ads in feed thumbnails
- Hashtag content source

### Changed

- Live stream UI improvements 
- Swift Package includes supporting libraries
- CocoaPod includes supporting libraries

### Fixed

- Player RTL issues
- Player rotation issues

## [1.8.0]

### Added

- Added `didTapLinkButtonAt` function for `FireworkVideoShoppingDelegate` in order to allow a custom action when link button in the product description is tapped.
- Updated CTA Button for generic use, allowing customize text to "Add to cart" or "Shop now".
- Updated `addProductVariantToCart` function to `productVariantCTASelected` on `FireworkVideoShoppingDelegate` and added `.none` option for the completion handler.

## [1.7.0]

### Added

- APIs to programmatically place video player to floating mode within the application.
- Updates Firework Branding
- Adds configuration for hiding link within the product description 
- Improves player accessibilty

## [1.6.0]

### Added

- Improved Picture in Picture API

## [1.5.0]

### Added

- Floating player fuctionality. This feature complements Picture in Picture by supporting a custom floating player that can be used within the application. Apple's Picture in Picture will automatically be used when the user switches to another app while watching a live stream.
- Improved Firework share link handling

### Fixed

- Story block automatically pauses when no longer on screen
- Overlap of pinned products and interactions while in live stream

## [1.3.0]

### Added

- Multiple product pinning

### Fixed

- Crash on iOS 16 when returning to the app from Apple Native PiP

## [1.2.0]

### Added

- Picture In Picture functionality
- `PictureInPictureController` can be used for livestreams
- Subtitle support for short videos (.vtt files) 

## [1.1.0]

### Added

- Purchase sale tracking API
- `DrawerControllerRepresentable` for story block to dismiss drawer
- Custom VAST attributes support
- In feed ad support


## [1.0.0]

### Added

- Story block playback API
- Story block UI improvements and optimizations 
- Accessibility improvements
- Localization for all components

### Changed

- Live Stream Provider APIs have been updated

## Breaking Changes

The Live Stream Provider APIs have changed which means you must also pull in the latest version of the supporting libraries. 
For more details please follow the instructions on the corresponding supporting lib repo.

### Fixed

- Live Stream Chat Emoji delay
- Image correct for RTL languages

## [0.18.0]

### Added

- Story block UI component
- RTL support
- Arabic translations

### Changed

- Product unit option names are now used when hydration occurs
- Fix for video event callback

## [0.17.0]

### Added 

- Configurable CTA display delay

## Breaking Changes

Direct references can be quickly updated by adding `contentConfiguration` after the `ctaButton` property.

```swift
var config = VideoPlayerContentConfiguration()

// From
config.ctaButton.backgroundColor = .green
config.ctaButton.textColor = .black
config.ctaButton.font = .systemFont(ofSize: 12)

// To

config.ctaButton.contentConfiguration.backgroundColor = .green
config.ctaButton.contentConfiguration.textColor = .black
config.ctaButton.contentConfiguration.font = .systemFont(ofSize: 12)
```

Type creation has changed as well and will require updating your instantiation routine. Continue creating the `ButtonContentConfiguration`, but instead of assigning it to the `VideoPlayerContentConfiguration.ctaButton` you will need to create a new type `VideoPlayerCTAConfiguration`. Then assign your existing `ButtonContentConfiguration` value to the property `contentConfiguration` on the `VideoPlayerCTAConfiguration` type. Finally, assign the value of the `VideoPlayerCTAConfiguration` to the `VideoPlayerContentConfiguration.ctaButton` property.

```swift
var config = VideoPlayerContentConfiguration()

let existingCTAConfig = ButtonContentConfiguration()
//config.ctaButton = existingCTAConfig // Won't compile

// Remove the old assignment and replace with this new configuration
var ctaConfig = VideoPlayerCTAConfiguration()
// Simply reassign to contentConfiguration on the VideoPlayerCTAConfiguration type
ctaConfig.contentConfiguration = existingCTAConfig
config.ctaButton = ctaConfig
```


## [0.16.0]

### Added

- Dynamic Content content source
- Autoplay video in thumbnails
- Support for external live stream player

### Changed

## Breaking Changes

- Replace the VideoPlayerContentConfiguration parameter of the func VideoFeedViewController.openVideoPlayer with type VideoFeedContentConfiguration

## [0.15.0]

### Added

- Support for live stream playback
- Live stream callback events

## [0.14.1]

### Changed

- Fixes an issue where the CTA button may not appear in certain conditions

## [0.14.0]

### Added

- Configurable Ad badge

### Changed

- Fixes an issue where the CTA text color configuration would not be updated
- Fixes an issue where the shopping callback to update the shopping cart icon would not be called in certain scenarios

## [0.13.0]

### Added

- Playlist group content source
- Configurable playback button on video player
- Configurable mute button on video player
- Configurable sponsored label on thumbnail feed
- Xcode documentation archive

### Changed

## Breaking Changes

- `FireworkVideoFeedDelegate.fireworkVideoDidTapVideoThumbnail(_:)` is now `FireworkVideoFeedDelegate.fireworkVideoDidTapThumbnail(_:)`
- `FeedEventDetails.videoID` is now `FeedEventDetails.id`. This property can represent either a video or a playlist id. You can use the `FeedEventDetails.source` to determine if id represents a video or playlist.

### Removed

- Removes support for iOS 11

## [0.12.0]

### Added

- Adds support for videos with products
- Adds shopping cart and product hydration integration
- Adds CTA button configuration
- Adds client side ability to customize CTA button action handling

## [0.11.0]

### Added

- Adds client side ad insertion logic for GAM integration.

## [0.10.0]

### Added

- Ability to force refresh video feeds.
- Ability to pass VideoPlayerContentConfiguration when opening a video player with share link.

## [0.9.1]

### Changed

- Fixes an issue where the custom share link would not be properly updated.

## [0.9.0]

### Changed

- Optimized ad insertion for more accuarate interstitial ad placement.

## [0.8.0]

### Added

- Support for Google IMA Ads SDK.

### Changed

- Video Player UI v2

## [0.7.0]

### Added

- Server configuration switch to stop duplicate Direct ads from being shown in the feed in the same session.

## [0.6.0]

### Added

- Open video player with share link or encoded `fwplayer` parameter.
- Add localization support for Japanese, Polish, Portuguese (Brazil), Russian, and Spanish.

## [0.5.0]

### Added

- Configurable sharing functionality in video player.
- Playback delegate event for share button tap.
- Feed delegate for video thumbnail tap.

### Changed

- Renamed `VideoPlayerContentConfiguration.FadeOutDelay.none` to `VideoPlayerContentConfiguration.FadeOutDelay.disabled` to remove ambiguity.
- Better support for launching the video player from landscape orientation. 

## [0.4.0]

### Added

- Video player tool tip user onboarding aides.
- Video player tool tip can now be disabled.
- When using a channel source, the video feed can be initialized with a playlist encoded ID.

## [0.3.0]

### Added
- Support for Google AdMob Native Ads.
- Video player can now be set to fit a specific size or to full bleed.

### Changed
- iOS versions 11 through iOS 14.4 now supported.
- The channel video sources now uses channel encoded ID instead of the channel name.

### Removed
- Publisher ID is no longer required or supported by the SDK.

## [0.2.0]

### Added
- `initializeSDK` can now be called with an optional userID parameter that can be used to link SDK metrics against a specific identity.
- Video feed can now be configured with a Channel source that displays videos from a given Channel ID.

### Changed
- Client ID is now replaced by App ID. 
- A Publisher ID is also required to use the SDK.
- `FireworkVideoPlaybackDelegate` exposes additional delegate methods for video playback.

## [0.1.0]

### Added
- Initial Release with Sample Code
