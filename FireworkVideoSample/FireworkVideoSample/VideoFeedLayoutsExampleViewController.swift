//
//  VideoFeedLayoutsExampleViewController.swift
//  FireworkVideoSample
//
//  Copyright © 2021 Firework. All rights reserved.
//

import UIKit
import FireworkVideo

/// Examples of setting up different video feed layouts and view configurations
class VideoFeedLayoutTypes {
    static var horizontalViewController: VideoFeedViewController {
        return VideoFeedLayoutTypes.configureHorizontalVideoFeedViewController()
    }
    
    static var verticalViewController: VideoFeedViewController {
        return VideoFeedLayoutTypes.configureVerticalVideoFeedViewController()
    }
    
    static var gridViewController: VideoFeedViewController {
        return VideoFeedLayoutTypes.configureGridVideoFeedViewController()
    }
    
    static func horizontalVideoFeedLayout() -> VideoFeedHorizontalLayout {
        let layout = VideoFeedHorizontalLayout()
        layout.itemSpacing = 8
        layout.contentInsets = UIEdgeInsets(top: 10, left: 16, bottom: 10, right: 16)
        return layout
    }
    
    static func configureHorizontalVideoFeedViewController() -> VideoFeedViewController {
        let vc = VideoFeedViewController()
        let layout = VideoFeedHorizontalLayout()
        layout.itemSpacing = 8
        layout.contentInsets = UIEdgeInsets(top: 10, left: 16, bottom: 10, right: 16)
        vc.layout = layout
        var config = vc.viewConfiguration
        config.backgroundColor = UIColor.systemGray
        config.itemView.cornerRadius = 12
        config.itemView.titleLayoutConfiguration.insets = UIEdgeInsets(top: 10, left: 4, bottom: 0, right: 4)
        config.itemView.title.isHidden = false
        config.itemView.title.font = UIFont.preferredFont(forTextStyle: .body).withSize(12.0)
        config.itemView.title.numberOfLines = 2
        config.itemView.title.textColor = UIColor.white.withAlphaComponent(0.9)
        config.itemView.titleLayoutConfiguration.titlePosition = .stacked
        vc.viewConfiguration = config
        return vc
    }
    
    static func configureVerticalVideoFeedViewController() -> VideoFeedViewController {
        let verticalVC = VideoFeedViewController()
        let layout = VideoFeedGridLayout()
        layout.numberOfColumns = 1
        layout.contentInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.itemSpacing = 20
        verticalVC.layout = layout
        var config = verticalVC.viewConfiguration
        config.backgroundColor = .white
        verticalVC.viewConfiguration = config
        return verticalVC
    }
    
    static func configureGridVideoFeedViewController() -> VideoFeedViewController {
        let gridVC = VideoFeedViewController()
        gridVC.view.backgroundColor = .systemBackground
        let layout = VideoFeedGridLayout()
        layout.numberOfColumns = 3
        layout.contentInsets = UIEdgeInsets(top: 16, left: 8, bottom: 16, right: 8)
        gridVC.layout = layout
        var config = gridVC.viewConfiguration
        config.backgroundColor = .white
        gridVC.viewConfiguration.playerView.videoCompleteAction = .loop
        gridVC.viewConfiguration = config
        return gridVC
    }
}

/// Extension showing how to insert and remove video feeds
/// from a container view controller
extension UIViewController {
    func removeVideoFeed(videoFeedViewController: VideoFeedViewController) {
        videoFeedViewController.willMove(toParent: nil)
        videoFeedViewController.view.removeFromSuperview()
        videoFeedViewController.removeFromParent()
    }

    /// In addition to embedding the view feed, this method sets up constraints
    func setupVideoFeed(videoFeedViewController: VideoFeedViewController,
                        topSpacing: CGFloat = 60.0,
                        fullHeight: Bool = true) {
        self.addChild(videoFeedViewController)
        self.view.addSubview(videoFeedViewController.view)
        videoFeedViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        videoFeedViewController.view.leadingAnchor.constraint(equalTo:self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        videoFeedViewController.view.trailingAnchor.constraint(equalTo:self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        videoFeedViewController.view.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor,
                                                          constant: topSpacing).isActive = true
        
        if fullHeight {
            videoFeedViewController.view.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor,
                                                                 constant: -topSpacing).isActive = true
        } else {
            videoFeedViewController.view.heightAnchor.constraint(equalToConstant: 280.0).isActive = true
        }
        
        videoFeedViewController.didMove(toParent: self)
    }
}

/// Use this along with VideoFeedLayoutTypes to see how different layouts can be implemented
/// and embedded into a container view controller
class VideoFeedLayoutsExampleViewController: UIViewController {
    
    var embeddedVideoFeedViewController:VideoFeedViewController!
    var layoutPicker: UISegmentedControl!
    
    var targetAction: SenderSuppliedTargetAction?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.secondarySystemBackground
        self.embeddedVideoFeedViewController = VideoFeedLayoutTypes.horizontalViewController
        self.setupLayoutPicker()
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
    
    private func setupLayoutPicker() {
        self.layoutPicker = UISegmentedControl()
        
        self.layoutPicker.insertSegment(withTitle: "Horizontal",
                                        at: 0,
                                        animated: false)
        self.layoutPicker.insertSegment(withTitle: "Vertical",
                                        at: 1,
                                        animated: false)
        self.layoutPicker.insertSegment(withTitle: "Grid",
                                        at: 2,
                                        animated: false)
        self.layoutPicker.selectedSegmentIndex = 0
        
        let targetAction = SenderSuppliedTargetAction { sender in
            if let segmentedControl = sender as? UISegmentedControl {
                self.removeVideoFeed(videoFeedViewController: self.embeddedVideoFeedViewController)
                
                switch segmentedControl.selectedSegmentIndex {
                case 0:
                    self.embeddedVideoFeedViewController = VideoFeedLayoutTypes.horizontalViewController
                    self.setupVideoFeed(videoFeedViewController: self.embeddedVideoFeedViewController,
                                        fullHeight: false)
                case 1:
                    self.embeddedVideoFeedViewController = VideoFeedLayoutTypes.verticalViewController
                    self.setupVideoFeed(videoFeedViewController: self.embeddedVideoFeedViewController)
                case 2:
                    self.embeddedVideoFeedViewController = VideoFeedLayoutTypes.gridViewController
                    self.setupVideoFeed(videoFeedViewController: self.embeddedVideoFeedViewController)
                default:
                    break
                }
                
                
            }
        }
        self.layoutPicker.addTarget(targetAction,
                                    action: #selector(SenderSuppliedTargetAction.performAction(_:)),
                                    for: .valueChanged)
        self.targetAction = targetAction
        
        self.layoutPicker.tintColor = UIColor.secondarySystemGroupedBackground
        self.layoutPicker.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(self.layoutPicker)
        
        self.layoutPicker.leadingAnchor.constraint(equalTo:self.view.safeAreaLayoutGuide.leadingAnchor,
                                                   constant: 8.0).isActive = true
        self.layoutPicker.trailingAnchor.constraint(equalTo:self.view.safeAreaLayoutGuide.trailingAnchor,
                                                    constant: -8.0).isActive = true
        self.layoutPicker.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor,
                                               constant: 20.0).isActive = true
    }
    
    private func configureVerticalVideoFeedLayout() -> VideoFeedGridLayout {
        let layout = VideoFeedGridLayout()
        layout.numberOfColumns = 1
        layout.contentInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.itemSpacing = 20
        return layout
    }
    
    private func configureGridVideoFeedLayout() -> VideoFeedGridLayout {
        let layout = VideoFeedGridLayout()
        layout.numberOfColumns = 3
        layout.contentInsets = UIEdgeInsets(top: 16, left: 8, bottom: 16, right: 8)
        return layout
    }
}
