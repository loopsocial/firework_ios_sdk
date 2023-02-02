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

    override func viewDidLoad() {
        super.viewDidLoad()
        setupStoryBlock()
        setupPictureInPicture()
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
    }

    func pictureInPictureController(_: FireworkVideo.PictureInPictureController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler _: @escaping (Bool) -> Void) {
        print(#function)
    }
}
