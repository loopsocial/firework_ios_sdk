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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.4/FireworkVideo-v1.43.4.xcframework.zip",
            checksum: "2d7637b66bc88535a1a8e85cce9856c064a67ffd8c98850e9f687a724d68d081")
    ]
)
