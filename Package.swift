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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.0/FireworkVideo-v1.25.0.xcframework.zip",
            checksum: "b4914912a154a5dd42cb4635b736ef368b47c57bf40e589b69e74a11f16e184c")
    ]
)
