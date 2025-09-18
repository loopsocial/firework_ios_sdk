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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.35.1-beta.1/FireworkVideo-v1.35.1-beta.1.xcframework.zip",
            checksum: "fdd997c851663acc8979c755b7fea10368916555fb29154e31e842d8db676666")
    ]
)
