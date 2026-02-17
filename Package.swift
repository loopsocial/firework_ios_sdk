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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.40.3/FireworkVideo-v1.40.3.xcframework.zip",
            checksum: "918bf16e6b2e4edb29f2f021d533e173b836b8b7398d0c19a447aa7448bd0001")
    ]
)
