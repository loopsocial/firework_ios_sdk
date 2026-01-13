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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.0-beta.7/FireworkVideo-v1.39.0-beta.7.xcframework.zip",
            checksum: "e2413f96847d0d3424ce8702c6a710e6b2a5d82b678ae478d2cd1dad706baefd")
    ]
)
