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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.0-beta.3/FireworkVideo-v1.42.0-beta.3.xcframework.zip",
            checksum: "a6026e90b311cd9512183f39d5723f423e9b0a577dabf3f5804086a7e6f9c9a9")
    ]
)
