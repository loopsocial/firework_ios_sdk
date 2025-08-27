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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.35.0-beta.6/FireworkVideo-v1.35.0-beta.6.xcframework.zip",
            checksum: "c31b2cface517d0d9c98f0cd27b06ec6ba2d37bd7fec39fabb51d228daff1c82")
    ]
)
