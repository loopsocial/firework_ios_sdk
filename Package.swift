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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.8/FireworkVideo-v1.41.8.xcframework.zip",
            checksum: "c3250013bc136e40426427f040a2c865b2c2ef362cf237a4e24bddf400f9356f")
    ]
)
