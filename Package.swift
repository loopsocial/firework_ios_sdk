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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.27.15/FireworkVideo-v1.27.15.xcframework.zip",
            checksum: "9622b2c9d390e5e1d660335c5a2816fe001d4a3c16e417a179147570ebccfe55")
    ]
)
