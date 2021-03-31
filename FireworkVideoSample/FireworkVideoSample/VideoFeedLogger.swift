//
//  VideoFeedLogger.swift
//  FireworkVideoSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import Foundation
import FireworkVideo

class VideoFeedLogger: FireworkVideoFeedDelegate {
    func fireworkVideoDidTapVideoThumbnail(_ eventDetails: FeedEventDetails) {
        print("Did Tap Video Thumbnail for Video ID: \(eventDetails.videoID)")
    }
}
