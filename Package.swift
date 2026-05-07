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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.7/FireworkVideo-v1.42.7.xcframework.zip",
            checksum: "b3b6ff1692bb5b6b8ab94c764f876d813054cc8fea21234c7fc4b8f88ec28449")
    ]
)
