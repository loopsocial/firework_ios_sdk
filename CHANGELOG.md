
## [1.45.1]

### Fixed

- Widget wrapper views (`FWSVideoFeedView`, `FWSStoryBlockView`, `CircleStoryView`, `PlayerDeckView`) now detach and release their embedded view controller when an ancestor container view is removed from the hierarchy, preventing a memory leak in long-lived host view controllers.

