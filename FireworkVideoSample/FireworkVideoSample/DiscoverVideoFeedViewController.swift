//
//  DiscoverVideoFeedViewController.swift
//  FireworkVideoSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import UIKit
import FireworkVideo

class DiscoverVideoFeedViewController: UIViewController {
    var embeddedVideoFeedViewController: VideoFeedViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.secondarySystemBackground
        
        /// Setup the Discover feed content source
        let contentSource = VideoFeedContentSource.discover
        
        /// Setup the horizontal layout
        let layout = VideoFeedHorizontalLayout()
        layout.itemSpacing = 8
        layout.contentInsets = UIEdgeInsets(top: 10, left: 16, bottom: 10, right: 16)
        
        /// Initialize the video feed view controller with the layout and content
        /// source.
        self.embeddedVideoFeedViewController = VideoFeedViewController(layout: layout, source: contentSource)
        
        var config = self.embeddedVideoFeedViewController.viewConfiguration
        
        /// Comment out the below line to show the share button
        config.playerView.shareButton.isHidden = true
        
        self.embeddedVideoFeedViewController.viewConfiguration = config
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.setupVideoFeed(videoFeedViewController: self.embeddedVideoFeedViewController,
                            fullHeight: false)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        self.removeVideoFeed(videoFeedViewController: self.embeddedVideoFeedViewController)
        super.viewDidDisappear(animated)
    }
}
