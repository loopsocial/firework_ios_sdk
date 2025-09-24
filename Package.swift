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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.35.2/FireworkVideo-v1.35.2.xcframework.zip",
            checksum: "d5e755827b9e24b1a08139f4cec21c6b0f3731f98fe1adc2e5feb37403c16d46")
    ]
)
