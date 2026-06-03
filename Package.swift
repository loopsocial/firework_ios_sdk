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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.11/FireworkVideo-v1.42.11.xcframework.zip",
            checksum: "8990ad0e68b2ed964db75722c2b8ec82119e9544317c6ab21e168dbaf5753f07")
    ]
)
