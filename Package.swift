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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.10-beta.2/FireworkVideo-v1.39.10-beta.2.xcframework.zip",
            checksum: "5d67c4157fe857dc8f402c6d5c252e2d54c13a99ce4f837c67aa147de544607d")
    ]
)
