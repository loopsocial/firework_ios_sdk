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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.27.4/FireworkVideo-v1.27.4.xcframework.zip",
            checksum: "620ac072ce6c48b3eb849d7fbdf3eab2ba233b9dca93f7931d101b031e9ffc09")
    ]
)
