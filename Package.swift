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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.37.4/FireworkVideo-v1.37.4.xcframework.zip",
            checksum: "1e853023f83b7bdd212b2dcad29687d57320b438b653cfffda09e71f7fde49fa")
    ]
)
