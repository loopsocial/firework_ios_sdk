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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.0-beta.5/FireworkVideo-v1.39.0-beta.5.xcframework.zip",
            checksum: "a931d0d0bdb2e6718583ce0065813cd7a355e3ad71efba0a1223cc5b3c9abade")
    ]
)
