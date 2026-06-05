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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.13/FireworkVideo-v1.42.13.xcframework.zip",
            checksum: "e01b649c4307d7ac65d39031a224e02ac5682eec3d678872efe8af294d07ea20")
    ]
)
