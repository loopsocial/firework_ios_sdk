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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.29.0/FireworkVideo-v1.29.0.xcframework.zip",
            checksum: "2d9a61d22792c74e2cae53acd289c72ff545793263e7d67404602ad2d9c9e633")
    ]
)
