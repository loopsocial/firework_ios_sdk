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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.0-beta.6/FireworkVideo-v1.42.0-beta.6.xcframework.zip",
            checksum: "698d9d5a7c1807bb649f817ecfe1bb4f2e1b5ad2a3c461faf7aabd440dbf5856")
    ]
)
