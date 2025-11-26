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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.38.0-beta.5/FireworkVideo-v1.38.0-beta.5.xcframework.zip",
            checksum: "bfa423297de13c73971297c02fdfab2c40cdf7c21f004e18d321ed991190a6a6")
    ]
)
