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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.2/FireworkVideo-v1.39.2.xcframework.zip",
            checksum: "7bcb521540ddcf9a3d1c59f4ad4c3b2f8c463c55af7ace338c9b2ca8a9c876bb")
    ]
)
