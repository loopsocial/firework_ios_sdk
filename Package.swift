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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.29.8/FireworkVideo-v1.29.8.xcframework.zip",
            checksum: "4009fa7a91b3a9b56ad04d648a27bce44168b5c657becf1cf765011e5dc812b8")
    ]
)
