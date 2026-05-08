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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.0-beta.9/FireworkVideo-v1.43.0-beta.9.xcframework.zip",
            checksum: "7f5fdd5cdada44c6baf17286107d118268c81b357f957dfb6b26c1873ddbab3d")
    ]
)
