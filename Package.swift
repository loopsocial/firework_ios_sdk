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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.30/"
                + "FireworkVideo-v1.43.3-beta.30.xcframework.zip",
            checksum: "9f87ed3711dbe0feb187b21fa5f8ead62a05e56736138d83b183a6202e2213ea"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.30/"
                + "FireworkVideo-static-v1.43.3-beta.30.xcframework.zip",
            checksum: "a377edc8891b4246faeaaed0667aa74a3ddc177e9d46617efa16b1af5fa1c876"),
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
