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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.1-beta.1/FireworkVideo-v1.24.1-beta.1.xcframework.zip",
            checksum: "8cc9e5fd56e2e0b41d1611900e0c4002fbaaf7d1fa1be421a2fe7ec2c81b0e0d")
    ]
)
