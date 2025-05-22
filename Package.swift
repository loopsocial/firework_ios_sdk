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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.31.0/FireworkVideo-v1.31.0.xcframework.zip",
            checksum: "b9afb93bf25c58984603138fb94094fe7f4ae72bdd80d0b09a8ddb8d9cebac73")
    ]
)
