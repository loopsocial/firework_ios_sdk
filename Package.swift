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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.37.0-beta.2/FireworkVideo-v1.37.0-beta.2.xcframework.zip",
            checksum: "16bb71d37778c7c78718f6f6a3d175dd14462245de2d76fd09bf9e1713643cda")
    ]
)
