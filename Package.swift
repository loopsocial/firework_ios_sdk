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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.2/FireworkVideo-v1.41.2.xcframework.zip",
            checksum: "a504abeb2e1e02d4cfd7acec6d18d1feb15dec0ae692789006a721169630220a")
    ]
)
