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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.29.5/FireworkVideo-v1.29.5.xcframework.zip",
            checksum: "fba0a5d64e1a23bc1bfe2d9b74dd211083ab8cf63617b3d616e5ba43a38bdc77")
    ]
)
