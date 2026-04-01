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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.0/FireworkVideo-v1.42.0.xcframework.zip",
            checksum: "ecb9448bc51dd99d336cbc0eec393207fb5e945d3705c75b6c6547c3ee7fc7c0")
    ]
)
