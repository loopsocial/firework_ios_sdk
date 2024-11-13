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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.1/FireworkVideo-v1.25.1.xcframework.zip",
            checksum: "cb30a0b6dac2bef8b5622a6a52fc88b2595333c052b8077d4c48c6ed9e641fd0")
    ]
)
