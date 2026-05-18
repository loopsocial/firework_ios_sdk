//
//  VideoFeedLogger.swift
//  FireworkVideoSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import Foundation
import FireworkVideo

class VideoFeedLogger: FireworkVideoFeedDelegate {
    func fireworkVideoDidTapThumbnail(_ eventDetails: FeedEventDetails) {
        switch eventDetails.source {
        case .playlistGroup:
            print("Did Tap Playlist Thumbnail for Playlist ID: \(eventDetails.id)")
        default:
            print("Did Tap Video Thumbnail for Video ID: \(eventDetails.id)")
        }

    }
}
