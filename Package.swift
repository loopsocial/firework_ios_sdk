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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.35.0/FireworkVideo-v1.35.0.xcframework.zip",
            checksum: "2682c1086d9bac1577f230500c689309ab8b0d083917173ede3e8a9aa96e5a4f")
    ]
)
