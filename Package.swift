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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.28.3/FireworkVideo-v1.28.3.xcframework.zip",
            checksum: "1e025759d255ffe4945a2f6a0666a2ba68c1e91dc0e7ed7611f5a63dd2c60cdc")
    ]
)
