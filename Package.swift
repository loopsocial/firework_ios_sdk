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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.12/FireworkVideo-v1.41.12.xcframework.zip",
            checksum: "2ff8ebc1b61b547c55a3388c2598ac0b52f28cb92ef6220dab98e566f4436ad4")
    ]
)
