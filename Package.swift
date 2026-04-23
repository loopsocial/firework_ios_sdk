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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.4/FireworkVideo-v1.42.4.xcframework.zip",
            checksum: "a56a8a8fee8569a03eba345f030afa7893b6eab1edde0bd4684b01b29b6de390")
    ]
)
