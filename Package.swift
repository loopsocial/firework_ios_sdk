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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.0-beta.5/FireworkVideo-v1.42.0-beta.5.xcframework.zip",
            checksum: "a700eea431bcfb147376d67833f26729e2de9f7b1f64f5e1d2a7de1efa7ed237")
    ]
)
