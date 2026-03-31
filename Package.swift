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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.11/FireworkVideo-v1.41.11.xcframework.zip",
            checksum: "2f3e86614c5976d3b015fdad81bdb705d6f4e068574f9befa0f3ff7618f15946")
    ]
)
