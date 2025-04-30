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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.27.8/FireworkVideo-v1.27.8.xcframework.zip",
            checksum: "c4014495d8ac372ce5cb59608de1c2c3e0052c57cd0e7b2878b5e7d84ef88a15")
    ]
)
