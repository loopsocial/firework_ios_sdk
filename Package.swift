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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.34.1/FireworkVideo-v1.34.1.xcframework.zip",
            checksum: "f840552602f5124b906892d2d4492593e0c2f0eca8ac08c5b384a650a85b4b9f")
    ]
)
