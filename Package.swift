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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.8/FireworkVideo-v1.39.8.xcframework.zip",
            checksum: "cf7132c3b9d6c6eb21674ea565e87c5a5d85a92f297303a0e2249bf3d6df2a69")
    ]
)
