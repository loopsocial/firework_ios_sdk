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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.28.2/FireworkVideo-v1.28.2.xcframework.zip",
            checksum: "9aa8a75e8fc1486861b7b852c8a7be9c69ed4059bd633cba0e179d61fa3df523")
    ]
)
