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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.0/FireworkVideo-v1.39.0.xcframework.zip",
            checksum: "a6dd6010cd612be2f495b364565e7caca3d4497c0c79eb0a201a659bae3a6fe7")
    ]
)
