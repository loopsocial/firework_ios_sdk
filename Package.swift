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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.13-beta.9/"
                + "FireworkVideo-v1.43.13-beta.9.xcframework.zip",
            checksum: "1808e26df3d332fc9d349cbd957302beacc5ea6d7b3d108499cc32f424f4b526"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.13-beta.9/"
                + "FireworkVideo-static-v1.43.13-beta.9.xcframework.zip",
            checksum: "f33ca1d8222fbe079ec5437f993179b4af80577a8748ae0d7b2d99b69f9551d1"),
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
