//
//  ShareVideoExamplesViewController.swift
//  FireworkVideoSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import UIKit
import FireworkVideo

class ShareVideoExamplesViewController: UIViewController {
    
    private let shareLinkURL = URL(string: "https://fw.tv/#fwplayer=eyJjaGFubmVsIjoiYkpEeXdaIiwiZmVlZF9pZCI6IjA3Q0E4NjY0LUNBRkEtNDc5OC04M0YzLTBEMUY5MjBERjY4NCIsImZlZWRfdHlwZSI6ImNoYW5uZWxfcGVyc29uYWxpemVkIiwidiI6MSwidmlkZW9faWQiOiI1bUdETGIifQ")!
    
    private let encodedFWPlayerParameter = "eyJjaGFubmVsIjoiYkpEeXdaIiwiZmVlZF9pZCI6IjA3Q0E4NjY0LUNBRkEtNDc5OC04M0YzLTBEMUY5MjBERjY4NCIsImZlZWRfdHlwZSI6ImNoYW5uZWxfcGVyc29uYWxpemVkIiwidiI6MSwidmlkZW9faWQiOiI1bUdETGIifQ"
    
    var embeddedVideoFeedViewController: VideoFeedViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.secondarySystemBackground
        let openURLButton = UIButton()
        openURLButton.setTitle("Open Share Link", for: .normal)
        openURLButton.addTarget(self, action: #selector(openShareLink), for: .touchUpInside)
        
        let openParameter = UIButton()
        openParameter.setTitle("Open Encoded Parameter", for: .normal)
        openParameter.addTarget(self, action: #selector(openEncodedParameter), for: .touchUpInside)
        
        let container = UIStackView(arrangedSubviews: [openURLButton, openParameter])
        container.translatesAutoresizingMaskIntoConstraints = false
        container.axis = .vertical
        container.spacing = 20
        
        view.addSubview(container)
        
        NSLayoutConstraint.activate([
            container.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            container.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc private func openShareLink() {
        VideoFeedViewController.openVideoPlayer(
            with: self.shareLinkURL,
            VideoFeedContentConfiguration(),
            self,
            true,
            self.shareCompletionHandler()
        )
    }
    
    @objc private func openEncodedParameter() {
        VideoFeedViewController.openVideoPlayer(
            with: self.encodedFWPlayerParameter,
            VideoFeedContentConfiguration(),
            self,
            self.shareCompletionHandler()
        )
    }
    
    private func shareCompletionHandler(
    ) -> (Result<VideoFeedViewController, VideoFeedError>) -> Void {
        return { [weak self] result in
            guard let feedViewController = try? result.get() else {
                return
            }
            let layout = VideoFeedGridLayout()
            layout.numberOfColumns = 3
            
            feedViewController.layout = layout
            
            var config = VideoFeedContentConfiguration()
            config.backgroundColor = UIColor.lightGray
            config.itemView.cornerRadius = 10
            
            // Setting the `baseURL` on the share button configuration
            // will generate custom share urls based on your defined url.
            // If your app already handles deeplinks or universal links
            // you can make use of this feature by using your deeplink scheme
            // as well as a host or path.
            //
            // When your app receives a Firework Share link it can be used to
            // show the video to the user. Simply pass the url to the
            // `VideoFeedViewController.openVideoPlayer`.
            let customURL = URL(string: "yourAppScheme://your.app")
            config.playerView.shareButton.behavior.baseURL = customURL
            
            feedViewController.viewConfiguration = config
            
            self?.embeddedVideoFeedViewController = feedViewController
            self?.setupVideoFeed(videoFeedViewController: feedViewController)
        }
    }
}
