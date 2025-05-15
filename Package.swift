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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.27.11/FireworkVideo-v1.27.11.xcframework.zip",
            checksum: "71569474af393403c2a58c8cff38f0a5e461c459d91c6b57319507b0b6e3ccab")
    ]
)
