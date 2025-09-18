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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.35.1-beta.3/FireworkVideo-v1.35.1-beta.3.xcframework.zip",
            checksum: "c2993a28c6c5455af3b34b4190cf8309b6ec10afad37191048fca8e533dbede5")
    ]
)
