// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "FireworkVideo",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "FireworkVideo",
                 targets: ["FireworkVideo"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "FireworkVideo",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.36.0-beta.8/FireworkVideo-v1.36.0-beta.8.xcframework.zip",
            checksum: "76accc88a9b320bc7645826d4d2ba95b0fe71d26a84c5a981b6c700c608049b0")
    ]
)
