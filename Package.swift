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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.5/FireworkVideo-v1.39.5.xcframework.zip",
            checksum: "a886f0cd8db4ba6de11e0207397c434634ccc75bf13ea845212512d5a99ebf61")
    ]
)
