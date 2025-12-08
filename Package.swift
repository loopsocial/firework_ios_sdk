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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.38.0-beta.8/FireworkVideo-v1.38.0-beta.8.xcframework.zip",
            checksum: "63797a6b11e2a91e09ede7e8fcf3bba3b81b551df4b027d3f4688ba3b9a37ed8")
    ]
)
