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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.0-beta.8/FireworkVideo-v1.43.0-beta.8.xcframework.zip",
            checksum: "d791fe6671d2a7b50bcbe304221b5fa3f15ce939434fc9e26d13dbb0b118b43a")
    ]
)
