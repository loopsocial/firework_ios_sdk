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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.29.0-beta.3/FireworkVideo-v1.29.0-beta.3.xcframework.zip",
            checksum: "07a985e8604feb9a0c16f1aa51ce7cfda1b6d94762ef34aee9629b33553db39b")
    ]
)
