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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.32.0/FireworkVideo-v1.32.0.xcframework.zip",
            checksum: "1f067e3dc4c4ed53f3441dc0eb0c92bd2eae1c2d874bd568dc01784e8550c4af")
    ]
)
