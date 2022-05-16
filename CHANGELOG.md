## CHANGELOG

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
