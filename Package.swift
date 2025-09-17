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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.36.0-beta.3/FireworkVideo-v1.36.0-beta.3.xcframework.zip",
            checksum: "1694145d9c2b84fed1726c6cef8def27554b0e7dfa1cadafb71ed4aec02e9b04")
    ]
)
