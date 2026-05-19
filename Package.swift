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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.11/FireworkVideo-v1.43.3-beta.11.xcframework.zip",
            checksum: "1f250628927a2a213cfcf2f437e989801b0ae66c347fb866a27f0c1c6a4e7f33"),
        .binaryTarget(
            name: "FireworkVideoStatic",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.11/FireworkVideo-static-v1.43.3-beta.11.xcframework.zip",
            checksum: "131999ccd0a4d0ef3e996cfc7ae4a29a37b8a717d615ccd086538385494a105e")
    ]
)
