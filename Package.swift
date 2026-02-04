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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.10/FireworkVideo-v1.39.10.xcframework.zip",
            checksum: "5da4f496b57afa890cbbe07d369f5cf3796691e20e8805f4d4d10495fd305a6c")
    ]
)
