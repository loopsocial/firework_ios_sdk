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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.47.0-beta.4/"
                + "FireworkVideo-v1.47.0-beta.4.xcframework.zip",
            checksum: "c57feb7ebfa2fb874e5fd896154d58267d1a5e21845e4cd110c36f67ff605400")
    ]
)
