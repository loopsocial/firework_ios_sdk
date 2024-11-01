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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.1-beta.1/FireworkVideo-v1.25.1-beta.1.xcframework.zip",
            checksum: "8b99d5cfdaea5d6cd2c79f825c25591b273be6cac6d47eaf4f2c8773fddd1cd4")
    ]
)
