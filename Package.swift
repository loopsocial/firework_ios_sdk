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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.49.0-beta.5/"
                + "FireworkVideo-v1.49.0-beta.5.xcframework.zip",
            checksum: "ad261562ed853e692fcee15f8b765d2040f07143852c112e4cc3d32ba250f9d4"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.49.0-beta.5/"
                + "FireworkVideo-static-v1.49.0-beta.5.xcframework.zip",
            checksum: "a662c410c2d1bf21d6a3411487b9382715981660c825ca3941f018382b7dfa0a"),
        .target(
            name: "FireworkVideoStaticResources",
            dependencies: ["FireworkVideoStaticBinary"],
            path: "Sources/FireworkVideoStaticResources",
            resources: [
                .copy("Resources/FireworkVideoResources.bundle")
            ]
        )
    ]
)
