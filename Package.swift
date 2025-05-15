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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.27.10/FireworkVideo-v1.27.10.xcframework.zip",
            checksum: "128eb3dee54fad91314f5ee1d66de7d2c5b9038ed48ab5fa44f9b3baaff8c7ff")
    ]
)
