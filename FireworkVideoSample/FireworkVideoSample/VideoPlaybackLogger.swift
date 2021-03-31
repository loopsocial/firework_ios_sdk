//
//  VideoPlayback.swift
//  FireworkVideoSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import Foundation

import FireworkVideo

class VideoPlaybackLogger: FireworkVideoPlaybackDelegate {
    func fireworkVideoDidTapShareButton(_ videoPlayback: VideoPlaybackDetails) {
        print("Did Share Button Tap for Video \(videoPlayback.videoID)")
    }
    
    func fireworkVideoDidRecordImpression(_ videoPlayback: VideoPlaybackDetails) {
        print("Did Record Impression for Video \(videoPlayback.videoID)")
    }
    
    func fireworkVideoDidPause(_ videoPlayback: VideoPlaybackDetails) {
        print("Did Pause Video \(videoPlayback.videoID)")
    }
    
    func fireworkVideoDidResume(_ videoPlayback: VideoPlaybackDetails) {
        print("Did Resume Video \(videoPlayback.videoID)")
    }
    
    func fireworkVideoDidStartPlaying(_ videoPlayback: VideoPlaybackDetails) {
        print("Did Start Playing Video \(videoPlayback.videoID)")
    }
    
    func fireworkVideoReachedFirstQuartile(_ videoPlayback: VideoPlaybackDetails) {
        print("Did Reach First Quartile for Video \(videoPlayback.videoID)")
    }
    
    func fireworkVideoReachedMidPoint(_ videoPlayback: VideoPlaybackDetails) {
        print("Did Reach Mid Point for Video \(videoPlayback.videoID)")
    }
    
    func fireworkVideoReachedThirdQuartile(_ videoPlayback: VideoPlaybackDetails) {
        print("Did Reach Third Quartile for Video \(videoPlayback.videoID)")
    }
    
    func fireworkVideoDidFinishPlaying(_ videoPlayback: VideoPlaybackDetails) {
        print("Did Finish Playing Video \(videoPlayback.videoID)")
    }
    
    func fireworkVideoDidTapCTAButton(_ videoPlayback: VideoPlaybackDetails) {
        print("Did Tap CTA Button for Video \(videoPlayback.videoID)")
    }
    
    func fireworkVideoDidStartPlayingAd(_ videoPlayback: VideoPlaybackDetails) {
        print("Did Start Playing Ad Video \(videoPlayback.videoID)")
    }
    
    func fireworkVideoDidFinishPlayingAd(_ videoPlayback: VideoPlaybackDetails) {
        print("Did Finish Playing Ad Video \(videoPlayback.videoID)")
    }
}
