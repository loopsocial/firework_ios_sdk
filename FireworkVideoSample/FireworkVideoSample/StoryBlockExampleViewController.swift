//
//  StoryBlockLayoutViewController.swift
//  FireworkVideoDebug
//
//  Created by Luke Davis on 6/3/22.
//

import UIKit
import FireworkVideo

class StoryBlockExampleViewController: UIViewController {
    private lazy var storyBlock: StoryBlockViewController  = {
        let storyBlock = StoryBlockViewController(
            source: StoryBlockContentSource.discover
        )
        storyBlock.delegate = self
        return storyBlock
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupStoryBlock()
    }

    private func setupStoryBlock() {
        view.backgroundColor = .systemBackground
        self.addChild(storyBlock)
        view.addSubview(storyBlock.view)
        storyBlock.view.translatesAutoresizingMaskIntoConstraints = false
        let aspect: CGFloat = 16 / 9
        NSLayoutConstraint.activate([
            storyBlock.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            storyBlock.view.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50),
            view.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: storyBlock.view.trailingAnchor, constant: 50),
            storyBlock.view.heightAnchor.constraint(equalTo: storyBlock.view.widthAnchor, multiplier: aspect)
        ])
        storyBlock.didMove(toParent: self)
    }
}

extension StoryBlockExampleViewController: StoryBlockViewControllerDelegate {
    func storyBlockDidLoadFeed(_ viewController: StoryBlockViewController) {
    }

    func storyBlock(_ viewController: StoryBlockViewController, didFailToLoadFeed error: StoryBlockError) {
        let alert = UIAlertController(title: "Failed to load feed", message: "Unable to load feed. Failed with error: \(error)", preferredStyle: .alert)
        let copyError = UIAlertAction(title: "Copy Error", style: .default) { _ in
            UIPasteboard.general.string = "\(error)"
        }
        alert.addAction(copyError)
        let ok = UIAlertAction(title: "OK", style: .default) { _ in
            // Pop back?
        }
        alert.addAction(ok)
        present(alert, animated: true)
    }
}
