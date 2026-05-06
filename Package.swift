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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.0-beta.6/FireworkVideo-v1.43.0-beta.6.xcframework.zip",
            checksum: "5b83ebe4ef2c0427cc671bfd26f9bf10d1e56ba09aa999d1ad62c5b5936bc7ec")
    ]
)
