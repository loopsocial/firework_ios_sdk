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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.0-beta.1/FireworkVideo-v1.42.0-beta.1.xcframework.zip",
            checksum: "b0aa598ad1a487cd8d6afb5863f8cf9008b1919d2eb355fee3acbbdb9eba13fb")
    ]
)
