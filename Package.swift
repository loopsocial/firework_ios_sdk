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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.28/"
                + "FireworkVideo-v1.43.3-beta.28.xcframework.zip",
            checksum: "15344025e28871ed3f560a148b96317302db26c4654f26d4dbb3c4096c1428ce"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.28/"
                + "FireworkVideo-static-v1.43.3-beta.28.xcframework.zip",
            checksum: "faaa774f1c8da9b094a0668fa572525ac33751ba1ef48283f6689d09bf324e52"),
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
