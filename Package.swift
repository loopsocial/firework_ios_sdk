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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.29.2/FireworkVideo-v1.29.2.xcframework.zip",
            checksum: "9133d4d6b1630a96bb276fb7e873e73c486a2e4ebc194e1bcee4f406187c372e")
    ]
)
