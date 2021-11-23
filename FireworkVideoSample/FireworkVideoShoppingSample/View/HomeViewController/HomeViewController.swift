//
//  HomeViewController.swift
//  FireworkVideoShoppingSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import UIKit
import FireworkVideo

class HomeViewController: UIViewController {

    static let channelID = ""
    static let playlistID = ""

    private lazy var feedViewController: VideoFeedViewController = {
        let layout = VideoFeedHorizontalLayout()
        layout.itemSpacing = 8
        layout.contentInsets = UIEdgeInsets(top: 10,
                                            left: 16,
                                            bottom: 10,
                                            right: 16)
        let source = VideoFeedContentSource.channelPlaylist(
            channelID: Self.channelID,
            playlistID: Self.playlistID
        )
        let feed = VideoFeedViewController(layout: layout,
                                           source: source)
        var config = feed.viewConfiguration
        config.backgroundColor = AppTheme.backgroundColor
        config.itemView.cornerRadius = 12
        config.itemView.title.isHidden = false
        config.itemView.title.font = UIFont.systemFont(ofSize: 12)
        config.itemView.title.numberOfLines = 2
        config.itemView.titleLayoutConfiguration.insets = .init(top: 8, left: 4, bottom: 4, right: 4)
        config.itemView.title.textColor = AppTheme.labelColor
        config.itemView.titleLayoutConfiguration.titlePosition = .stacked
        config.playerView.playerStyle = .fit
        feed.viewConfiguration = config
        return feed
    }()

    @IBOutlet weak var feedContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupFeed()
    }

    private func setupFeed() {
        addChild(feedViewController)
        feedContainer.addSubview(feedViewController.view)
        feedViewController.view.translatesAutoresizingMaskIntoConstraints = false
        let feedView: UIView = feedViewController.view
        NSLayoutConstraint.activate([
            feedView.leadingAnchor.constraint(equalTo: feedContainer.leadingAnchor),
            feedView.topAnchor.constraint(equalTo: feedContainer.topAnchor),
            feedView.trailingAnchor.constraint(equalTo: feedContainer.trailingAnchor),
            feedView.bottomAnchor.constraint(equalTo: feedContainer.bottomAnchor)
        ])
        feedViewController.didMove(toParent: self)
    }

}

