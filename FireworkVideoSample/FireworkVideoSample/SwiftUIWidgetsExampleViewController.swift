//
//  SwiftUIWidgetsExampleViewController.swift
//  FireworkVideoSample
//
//  Created by linjie jiang on 2026/5/27.
//  Copyright © 2026 Firework. All rights reserved.
//

import SwiftUI
import UIKit
import FireworkVideo

// MARK: - SwiftUIWidgetsExampleView

/// Demonstrates embedding multiple FireworkVideo SwiftUI widgets
/// (`FWSVideoFeedSwiftUIView` and `PlayerDeckSwiftUIView`) inside a single
/// `ScrollView` + `LazyVStack`, interleaved with regular placeholder content.
///
/// `LazyVStack` only realizes the widgets as they scroll into view, which keeps
/// the number of simultaneously alive video players low.
struct SwiftUIWidgetsExampleView: View {
    /// The kinds of rows we render in the scroll view.
    private enum Row: Identifiable {
        case placeholder(index: Int)
        case videoFeed(index: Int)
        case playerDeck(index: Int)

        var id: String {
            switch self {
            case let .placeholder(index): return "placeholder-\(index)"
            case let .videoFeed(index): return "videoFeed-\(index)"
            case let .playerDeck(index): return "playerDeck-\(index)"
            }
        }
    }

    @State private var videoFeedHeight: CGFloat = 260
    @State private var playerDeckHeight: CGFloat = 500

    /// Shared content source reused by both the video feeds and the player decks.
    private let source: VideoFeedContentSource = .channelPlaylist(
        channelID: "Your encoded channel ID here",
        playlistID: "Your encoded playlist ID here"
    )

    /// The composed layout: placeholders interleaved with video feeds and player decks.
    private let rows: [Row] = {
        var rows: [Row] = []
        var videoFeedIndex = 1
        var playerDeckIndex = 1
        var placeholderIndex = 1

        func appendPlaceholders(_ count: Int) {
            for _ in 0..<count {
                rows.append(.placeholder(index: placeholderIndex))
                placeholderIndex += 1
            }
        }

        appendPlaceholders(4)
        rows.append(.videoFeed(index: videoFeedIndex)); videoFeedIndex += 1
        appendPlaceholders(3)
        rows.append(.playerDeck(index: playerDeckIndex)); playerDeckIndex += 1
        appendPlaceholders(3)
        rows.append(.videoFeed(index: videoFeedIndex)); videoFeedIndex += 1
        appendPlaceholders(3)
        rows.append(.playerDeck(index: playerDeckIndex)); playerDeckIndex += 1
        appendPlaceholders(6)

        return rows
    }()

    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            LazyVStack(spacing: 20) {
                headerSection

                heightControls

                ForEach(rows) { row in
                    switch row {
                    case let .placeholder(index):
                        placeholderCard(index: index)
                    case let .videoFeed(index):
                        videoFeedSection(index: index)
                    case let .playerDeck(index):
                        playerDeckSection(index: index)
                    }
                }
            }
            .padding(.vertical, 16)
        }
    }

    // MARK: Widgets

    private func videoFeedSection(index: Int) -> some View {
        VStack(spacing: 8) {
            sectionTitle("VideoFeed #\(index)")

            FWSVideoFeedSwiftUIView(
                layout: VideoFeedHorizontalLayout(),
                source: source,
                viewConfiguration: makeVideoFeedConfiguration(),
                isPictureInPictureEnabled: false,
                onVideoFeedLoaded: {
                    debugPrint("VideoFeed #\(index) loaded successfully.")
                },
                onVideoFeedFailedToLoad: { error in
                    debugPrint("VideoFeed #\(index) failed: \(error.localizedDescription)")
                }
            )
            .frame(height: videoFeedHeight)
        }
    }

    private func playerDeckSection(index: Int) -> some View {
        VStack(spacing: 8) {
            sectionTitle("PlayerDeck #\(index)")

            PlayerDeckSwiftUIView(
                source: source,
                viewConfiguration: makePlayerDeckConfiguration(),
                isPictureInPictureEnabled: false,
                onPlayerDeckLoaded: {
                    debugPrint("PlayerDeck #\(index) loaded successfully.")
                },
                onPlayerDeckFailedToLoad: { error in
                    debugPrint("PlayerDeck #\(index) failed: \(error.localizedDescription)")
                }
            )
            .frame(height: playerDeckHeight)
        }
    }

    // MARK: Chrome

    private var headerSection: some View {
        VStack(spacing: 8) {
            Text("SwiftUI Widgets in ScrollView")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Text("FWSVideoFeedSwiftUIView and PlayerDeckSwiftUIView embedded in a LazyVStack. Scroll to load each widget lazily.")
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
        .padding(.horizontal, 16)
    }

    private var heightControls: some View {
        VStack(spacing: 12) {
            VStack(spacing: 4) {
                Text("VideoFeed Height: \(Int(videoFeedHeight))px")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Slider(value: $videoFeedHeight, in: 100...600, step: 10)
            }
            VStack(spacing: 4) {
                Text("PlayerDeck Height: \(Int(playerDeckHeight))px")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Slider(value: $playerDeckHeight, in: 200...800, step: 10)
            }
        }
        .padding(.horizontal, 16)
    }

    private func sectionTitle(_ title: String) -> some View {
        Text(title)
            .font(.headline)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 16)
    }

    private func placeholderCard(index: Int) -> some View {
        HStack(spacing: 12) {
            Image(systemName: "rectangle.on.rectangle.angled")
                .foregroundColor(.orange)
                .font(.title)
            VStack(alignment: .leading, spacing: 4) {
                Text("Placeholder Content \(index)")
                    .font(.subheadline)
                    .fontWeight(.medium)
                Text("Your own app content lives alongside the widgets")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
                .font(.caption)
        }
        .padding(16)
        .background(Color(.systemGray6))
        .cornerRadius(8)
        .padding(.horizontal, 16)
    }

    // MARK: Configuration

    private func makeVideoFeedConfiguration() -> VideoFeedContentConfiguration {
        var config = VideoFeedContentConfiguration()
        config.useSafeAreaViewport = true
        config.itemView.autoplay.isEnabled = true
        config.itemView.title.isHidden = true
        config.itemView.title.font = .systemFont(ofSize: 12)
        config.itemView.title.numberOfLines = 2
        config.itemView.title.textColor = .white
        config.itemView.titleLayoutConfiguration.titlePosition = .nested
        config.itemView.playIcon.isHidden = false
        config.backgroundColor = .gray
        config.playerView.scrollDirection = .vertical
        return config
    }

    private func makePlayerDeckConfiguration() -> PlayerDeckContentConfiguration {
        var config = PlayerDeckContentConfiguration()
        config.itemView.autoplay.isEnabled = true
        config.itemView.playIcon.isHidden = false
        config.itemView.muteButton.isHidden = false
        config.playerView.scrollDirection = .vertical
        return config
    }
}

// MARK: - SwiftUIWidgetsExampleViewController

class SwiftUIWidgetsExampleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "SwiftUI Widgets"
        view.backgroundColor = .systemBackground

        let hostingController = UIHostingController(rootView: SwiftUIWidgetsExampleView())
        addChild(hostingController)
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(hostingController.view)
        NSLayoutConstraint.activate([
            hostingController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hostingController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            hostingController.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostingController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        hostingController.didMove(toParent: self)
    }
}
