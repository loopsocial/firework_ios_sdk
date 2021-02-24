//
//  TableViewEmbeddedVideoFeedViewController.swift
//  FireworkVideoSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import UIKit
import FireworkVideo


class VideoFeedCell: UITableViewCell {
    static let reuseIdentifier = "VideoFeedCellReuseIdentifier"
    
    var isSetup: Bool = false
    
    func setup(videoFeedViewController: VideoFeedViewController) {
        self.contentView.addSubview(videoFeedViewController.view)
        
        videoFeedViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        self.contentView.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: videoFeedViewController.view.leadingAnchor).isActive = true
        self.contentView.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: videoFeedViewController.view.trailingAnchor).isActive = true
        self.contentView.safeAreaLayoutGuide.topAnchor.constraint(equalTo: videoFeedViewController.view.topAnchor).isActive = true
        self.contentView.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: videoFeedViewController.view.bottomAnchor).isActive = true
        
        self.isSetup = true
    }
}

class TableViewEmbeddedVideoFeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    lazy var videoFeedViewController: VideoFeedViewController = self.configuredFeedViewController()
    
    lazy var tableView: UITableView = self.configureTableView()
    
    override func viewDidLoad() {
       super.viewDidLoad()
        self.view.backgroundColor = UIColor.systemBackground
        self.setup()
    }
    
    private func setup() {
        self.view.addSubview(self.tableView)
        self.view.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: self.tableView.leadingAnchor).isActive = true
        self.view.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: self.tableView.trailingAnchor).isActive = true
        self.view.safeAreaLayoutGuide.topAnchor.constraint(equalTo: self.tableView.topAnchor).isActive = true
        self.view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: self.tableView.bottomAnchor).isActive = true
    }
    
    
    /// Only the horizontal layout supports embedding inside of UITableView
    /// or UICollectionView.
    private func configuredFeedViewController() -> VideoFeedViewController {
        let viewController = VideoFeedViewController()
        let layout = VideoFeedHorizontalLayout()
        layout.itemSpacing = 8
        layout.contentInsets = UIEdgeInsets(top: 10, left: 16, bottom: 10, right: 16)
        viewController.layout = layout
        var config = viewController.viewConfiguration
        config.backgroundColor = UIColor.lightGray
        config.itemView.cornerRadius = 12
        config.itemView.titleLayoutConfiguration.insets = UIEdgeInsets(top: 10, left: 4, bottom: 0, right: 4)
        config.itemView.title.isHidden = false
        config.itemView.title.font = UIFont.systemFont(ofSize: 12)
        config.itemView.title.numberOfLines = 2
        config.itemView.title.textColor = UIColor.white.withAlphaComponent(0.9)
        config.itemView.titleLayoutConfiguration.titlePosition = .stacked
        viewController.viewConfiguration = config
        return viewController
    }
    
    private func configureTableView() -> UITableView {
        let tableView = UITableView(frame: .zero, style: .grouped)
        
        tableView.register(VideoFeedCell.self,
                           forCellReuseIdentifier: VideoFeedCell.reuseIdentifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.delegate = self
        tableView.dataSource = self
        
        return tableView
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if indexPath.row == 0 {
            let cell = UITableViewCell(style: .subtitle,
                                       reuseIdentifier: "")
            cell.textLabel?.text = NSLocalizedString("Embed the Horizontal Layout in a Table View",
                                                     comment: "")
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: VideoFeedCell.reuseIdentifier,
                                                     for: indexPath) as! VideoFeedCell
            
            if !cell.isSetup {
                cell.setup(videoFeedViewController: self.videoFeedViewController)
            }
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.row == 0 ? 75.0 : 280.0
    }
}
