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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.6/FireworkVideo-v1.39.6.xcframework.zip",
            checksum: "70f1bd8d769d8821fe20b9e4793be724d8fdb9390ad06e98c1af3a49d3f1e7fb")
    ]
)
