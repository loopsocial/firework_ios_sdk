## CHANGELOG

## [0.8.0] - 2021-07-19

### Added

- Support for Google IMA Ads SDK.

### Changed

- Video Player UI v2

## [0.7.0] - 2021-05-06

### Added

- Server configuration switch to stop duplicate Direct ads from being shown in the feed in the same session.

## [0.6.0] - 2021-05-15

### Added

- Open video player with share link or encoded `fwplayer` parameter.
- Add localization support for Japanese, Polish, Portuguese (Brazil), Russian, and Spanish.

## [0.5.0] - 2021-04-01

### Added

- Configurable sharing functionality in video player.
- Playback delegate event for share button tap.
- Feed delegate for video thumbnail tap.

### Changed

- Renamed `VideoPlayerContentConfiguration.FadeOutDelay.none` to `VideoPlayerContentConfiguration.FadeOutDelay.disabled` to remove ambiguity.
- Better support for launching the video player from landscape orientation. 

## [0.4.0] - 2021-03-18

### Added

- Video player tool tip user onboarding aides.
- Video player tool tip can now be disabled.
- When using a channel source, the video feed can be initialized with a playlist encoded ID.

## [0.3.0] - 2021-03-05

### Added
- Support for Google AdMob Native Ads.
- Video player can now be set to fit a specific size or to full bleed.

### Changed
- iOS versions 11 through iOS 14.4 now supported.
- The channel video sources now uses channel encoded ID instead of the channel name.

### Removed
- Publisher ID is no longer required or supported by the SDK.

## [0.2.0] - 2021-02-15

### Added
- `initializeSDK` can now be called with an optional userID parameter that can be used to link SDK metrics against a specific identity.
- Video feed can now be configured with a Channel source that displays videos from a given Channel ID.

### Changed
- Client ID is now replaced by App ID. 
- A Publisher ID is also required to use the SDK.
- `FireworkVideoPlaybackDelegate` exposes additional delegate methods for video playback.

## [0.1.0] - 2021-01-25

### Added
- Initial Release with Sample Code
