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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.27.2/FireworkVideo-v1.27.2.xcframework.zip",
            checksum: "50fa94e2d776bb64237c3a5af43b7b889c33cbd9f32e5c0f03f6036b47c0a539")
    ]
)
