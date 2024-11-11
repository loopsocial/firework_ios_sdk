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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.1-beta.8/FireworkVideo-v1.25.1-beta.8.xcframework.zip",
            checksum: "af06fb28f00e90fc7216d152b63fb0bfca0a8fbc40c14bfb2d53297124eea759")
    ]
)
