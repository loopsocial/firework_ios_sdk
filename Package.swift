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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.0-beta.7/FireworkVideo-v1.42.0-beta.7.xcframework.zip",
            checksum: "0dc2c03c9ebe07d0fcc382aae6f4a1475f72878b2370680366b855a9a1ae858d")
    ]
)
