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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.4-beta.4/FireworkVideo-v1.24.4-beta.4.xcframework.zip",
            checksum: "033866b983a9e9cb9227b23ec3d281d59994c75c1dc6b85024b5e6ef3023da93")
    ]
)
