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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.28.0/FireworkVideo-v1.28.0.xcframework.zip",
            checksum: "75a2f2acd1a20e12311fcf4e7d39b95214e7c913bd43892529752ef18dd42bc0")
    ]
)
