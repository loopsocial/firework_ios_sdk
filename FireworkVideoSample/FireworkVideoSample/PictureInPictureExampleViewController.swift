//
//  PictureInPictureExampleViewController.swift
//  FireworkVideoSample
//
//  Created by Kerde Severin on 9/14/22.
//  Copyright © 2022 Firework. All rights reserved.
//

import FireworkVideo
import Foundation
import UIKit

class PictureInPictureExampleViewController: UIViewController {

    private lazy var storyBlock: StoryBlockViewController = {
        let storyBlock = StoryBlockViewController(
            source: StoryBlockContentSource.discover
        )
        return storyBlock
    }()

    private lazy var pipEnterButton = UIBarButtonItem(
        image: UIImage(systemName: "pip.enter"),
        style: .plain,
        target: self,
        action: #selector(enterPip)
    )

    private lazy var pipExitButton = UIBarButtonItem(
        image: UIImage(systemName: "pip.exit"),
        style: .plain,
        target: self,
        action: #selector(exitPip)
    )

    override func viewDidLoad() {
        super.viewDidLoad()
        setupStoryBlock()
        setupPictureInPicture()
        navigationItem.rightBarButtonItem = pipEnterButton
    }

    private func setupPictureInPicture() {
        // First enable picture in picture
        storyBlock.isPictureInPictureEnabled = true
        // After enabling picture in picture we can assign a delegate
        storyBlock.pictureInPictureDelegate = self
    }

    private func setupStoryBlock() {
        view.backgroundColor = .systemBackground
        addChild(storyBlock)
        view.addSubview(storyBlock.view)
        storyBlock.view.translatesAutoresizingMaskIntoConstraints = false
        let aspect: CGFloat = 16 / 9
        NSLayoutConstraint.activate([
            storyBlock.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            storyBlock.view.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            view.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: storyBlock.view.trailingAnchor, constant: 50),
            storyBlock.view.heightAnchor.constraint(equalTo: storyBlock.view.widthAnchor, multiplier: aspect),
        ])
        storyBlock.didMove(toParent: self)
    }

    @objc
    private func enterPip() {
        do {
            try PictureInPictureController.start(with: storyBlock.feedID)
        } catch {
            print("Error entering Picture-in-Picture: \(error)")
        }
    }

    @objc
    private func exitPip() {
        do {
            try PictureInPictureController.stop(with: storyBlock.feedID)
        } catch {
            print("Error exiting Picture-in-Picture: \(error)")
        }
    }

    private var isOnPictureInPicture: Bool = false {
        didSet {
            navigationItem.rightBarButtonItem = isOnPictureInPicture ? pipExitButton : pipEnterButton
        }
    }
}

extension PictureInPictureExampleViewController: PictureInPictureControllerDelegate {

    func pictureInPictureControllerWillStartPictureInPicture(_:
        FireworkVideo.PictureInPictureController)
    {
        print(#function)
    }

    func pictureInPictureControllerDidStartPictureInPicture(_:
        FireworkVideo.PictureInPictureController)
    {
        print(#function)
        isOnPictureInPicture = true
    }

    func pictureInPictureController(_: FireworkVideo.PictureInPictureController,
                                    failedToStartPictureInPictureWithError _: Error?)
    {
        print(#function)
    }

    func pictureInPictureControllerWillStopPictureInPicture(_ pictureInPictureController: FireworkVideo.PictureInPictureController) {
        print(#function)
    }

    func pictureInPictureControllerDidStopPictureInPicture(_:
        FireworkVideo.PictureInPictureController)
    {
        print(#function)
        isOnPictureInPicture = false
    }

    func pictureInPictureController(_: FireworkVideo.PictureInPictureController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler _: @escaping (Bool) -> Void) {
        print(#function)
    }
}
