//
//  StoryboardVideoFeedViewController.swift
//  FireworkVideoSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import UIKit
import FireworkVideo

class StoryboardVideoFeedViewController: UIViewController {
    static let storyboardID = "StoryboardVideoFeedViewController"
    
    @IBOutlet weak var videoFeedView: UIView!
    
    /// Video Feed View Controller Initialized Here When it's View Controller
    /// is intialized
    var videoFeedViewController: VideoFeedViewController = VideoFeedViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemBackground
        self.title = "Storyboard Video Feed"
        
        /// Configure layout, this uses the horizontal layout
        /// That will display the video feed as a single row
        let layout = VideoFeedHorizontalLayout()
        layout.itemSpacing = 8
        layout.contentInsets = UIEdgeInsets(top: 10, left: 16, bottom: 10, right: 16)
        self.videoFeedViewController.layout = layout
        
        /// Configuring appearance uses a model named View Configuration
        
        /// Copy the existing configuration, because it is a struct
        /// changing the config variable will not affect the video feed until
        /// it is set again, we'll do that later in this function.
        var config = self.videoFeedViewController.viewConfiguration
        
        /// We set the background to a light gray color.
        config.backgroundColor = UIColor.lightGray
        
        /// Configure the appearance of each video thumbnail in the feed
        config.itemView.cornerRadius = 12
        
        /// Configure title appearance
        
        /// Is the title visible or not?
        config.itemView.title.isHidden = false
        
        /// Title text appearance including font, text color, and max number
        /// of lines for long titles
        config.itemView.title.font = UIFont.systemFont(ofSize: 12)
        config.itemView.title.textColor = UIColor.white.withAlphaComponent(0.9)
        config.itemView.title.numberOfLines = 2
        
        /// Spacing between the end of the title text and the border of it's view
        config.itemView.titleLayoutConfiguration.insets = UIEdgeInsets(top: 10, left: 4, bottom: 0, right: 4)
        
        /// Arrangement of the titles
        config.itemView.titleLayoutConfiguration.titlePosition = .stacked
        
        /// When finished configuring the apperarance
        /// Set back the viewConfiguration property
        /// This will update the apperance of the video feed
        self.videoFeedViewController.viewConfiguration = config
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        /// Insert the video feed
        self.addChild(self.videoFeedViewController)
        self.videoFeedView.addSubview(self.videoFeedViewController.view)
        
        /// Configure constraints to make sure video feed
        /// size matches the video feed inside the storyboard
        self.videoFeedViewController.view.translatesAutoresizingMaskIntoConstraints = false
        self.videoFeedViewController.view.heightAnchor.constraint(equalTo: self.videoFeedView.heightAnchor).isActive = true
        self.videoFeedViewController.view.widthAnchor.constraint(equalTo: self.videoFeedView.widthAnchor).isActive = true
        
        /// Notify the VideoFeedViewController that it's
        /// been inserted into another view controller
        self.videoFeedViewController.didMove(toParent: self)
    }
}
