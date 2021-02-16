## CHANGELOG

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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
