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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.0-beta.11/FireworkVideo-v1.43.0-beta.11.xcframework.zip",
            checksum: "05816a2b4f9178ebc2593ae64128d473233b1620bc52005943dbd3d3e169f1a2")
    ]
)
