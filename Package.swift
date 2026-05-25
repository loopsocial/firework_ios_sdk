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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.27/"
                + "FireworkVideo-v1.43.3-beta.27.xcframework.zip",
            checksum: "d5a3c73672ba8fea6a39a76a14652a09123c331a24a6a1e7b4fa3157ef399ffe"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.27/"
                + "FireworkVideo-static-v1.43.3-beta.27.xcframework.zip",
            checksum: "097d20c1f2650a2bdec9abf319c3d24eb3b8291708a23dd2376ddca1b506073c"),
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
