//
//  VideoFeedChannelSourceViewController.swift
//  FireworkVideoSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import UIKit

import FireworkVideo

class VideoFeedChannelSourceViewController: UIViewController, VideoFeedViewControllerDelegate {
    var embeddedVideoFeedViewController:VideoFeedViewController!
    
    var contentSource: VideoFeedContentSource
    
    init(contentSource: VideoFeedContentSource) {
        self.contentSource = contentSource
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if case VideoFeedContentSource.channel = self.contentSource {
            self.title = "Video Feed from Channel"
        } else if case VideoFeedContentSource.channelPlaylist = self.contentSource {
            self.title = "Video Feed from Channel Playlist"
        }
        
        self.view.backgroundColor = UIColor.secondarySystemBackground
        
        let horizontalVideoFeedLayout = VideoFeedLayoutTypes.horizontalVideoFeedLayout()
        
        self.embeddedVideoFeedViewController = VideoFeedViewController(layout: horizontalVideoFeedLayout,
                                                                       source: self.contentSource)
        self.embeddedVideoFeedViewController.delegate = self
        
        self.setupVideoFeed(videoFeedViewController: self.embeddedVideoFeedViewController,
                            topSpacing: 20.0,
                            fullHeight: false)
    }
    
    func videoFeedDidLoadFeed(_ viewController: FireworkVideo.VideoFeedViewController) {
        print("Did Load Feed")
    }

    /// Called if the video feed failed to load
    func videoFeed(_ viewController: FireworkVideo.VideoFeedViewController, didFailToLoadFeed error: FireworkVideo.VideoFeedError) {
        if case let FireworkVideo.VideoFeedError.contentSourceError(contentSourceError) =  error {
            print("Video feed on view controller \(viewController) loaded with error \(contentSourceError.localizedDescription).")
        } else if case let FireworkVideo.VideoFeedError.unknownError(underlyingError) = error {
            print("Video feed on view controller \(viewController) loaded with error \(underlyingError.localizedDescription).")
        }
    }
}
