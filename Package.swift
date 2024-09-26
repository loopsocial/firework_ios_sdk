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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.4-beta.3/FireworkVideo-v1.24.4-beta.3.xcframework.zip",
            checksum: "4c5420f2c743bdfe194844b3f1c6df077a476516c218b72732b43244621b5457")
    ]
)
