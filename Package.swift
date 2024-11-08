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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.1-beta.6/FireworkVideo-v1.25.1-beta.6.xcframework.zip",
            checksum: "4dcd0bb4533db366387d63510dbab3c8ae9b1437c14333c19744e483954bdf76")
    ]
)
