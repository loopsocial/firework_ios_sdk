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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.36.0-beta.10/FireworkVideo-v1.36.0-beta.10.xcframework.zip",
            checksum: "3bf3de61eaddb434be66cb407d630a98786d1cb7dabd73b57359b278e5d18c7d")
    ]
)
