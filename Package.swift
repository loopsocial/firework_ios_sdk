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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.37.0-beta.7/FireworkVideo-v1.37.0-beta.7.xcframework.zip",
            checksum: "5b7e33535574562a069e9e1800f8a46074e5fe6ce4ec4e2df704a0775e3501a4")
    ]
)
