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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.37.5/FireworkVideo-v1.37.5.xcframework.zip",
            checksum: "cd40fb85b53d19428adc6a109e6da2ff258696ad1500c881fcf27a3b2d4d3b82")
    ]
)
