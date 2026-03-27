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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.7-beta.1/FireworkVideo-v1.41.7-beta.1.xcframework.zip",
            checksum: "8816be5e43ce3a54e16ce8879feffe7680a3e2f96524e1ac718d7a22877de51b")
    ]
)
