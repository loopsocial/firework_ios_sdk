// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "FireworkVideo",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "FireworkVideo",
                 targets: ["FireworkVideo"]),
        .library(name: "FireworkVideoStatic",
                 targets: ["FireworkVideoStatic"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "FireworkVideo",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.9/FireworkVideo-v1.43.3-beta.9.xcframework.zip",
            checksum: "72a32f8e09469e91f0b164046b375d866858a599bff068903c315b5b5bceef35"),
        .binaryTarget(
            name: "FireworkVideoStatic",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.9/FireworkVideo-static-v1.43.3-beta.9.xcframework.zip",
            checksum: "134fba233b4d7bd6d8705fecfa939bb786490bbe82bf8d8799d31b15143a5cd3")
    ]
)
