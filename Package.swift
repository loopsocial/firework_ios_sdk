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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.28.1/FireworkVideo-v1.28.1.xcframework.zip",
            checksum: "4c87b38d28999aa634a2288b70ab7e9ead1d7d80c99defdaf60f0ba7b3440c6c")
    ]
)
