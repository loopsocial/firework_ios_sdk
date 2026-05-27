// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "FireworkVideo",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "FireworkVideo",
                 targets: ["FireworkVideo"]),
        .library(name: "FireworkVideoStatic",
                 targets: ["FireworkVideoStaticResources"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "FireworkVideo",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.4-beta.2/"
                + "FireworkVideo-v1.43.4-beta.2.xcframework.zip",
            checksum: "81ed63b43cadb874e1025d89bb0f42d0e35dc8fa0c6c081bd87cf160ad5a1072"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.4-beta.2/"
                + "FireworkVideo-static-v1.43.4-beta.2.xcframework.zip",
            checksum: "1b79a6ed18de7a697dc068a496ed0e374b4486aaa43928c62df00d3cdd2f11d4"),
        .target(
            name: "FireworkVideoStaticResources",
            dependencies: ["FireworkVideoStaticBinary"],
            path: "Sources/FireworkVideoStaticResources",
            resources: [
                .copy("Resources/FireworkVideo.bundle"),
                .copy("Resources/LiveStreamKit_ChatUI.bundle"),
                .copy("Resources/LiveStreamKit_InteractionUI.bundle"),
                .copy("Resources/LiveStreamKit_ProductUI.bundle")
            ]
        )
    ]
)
