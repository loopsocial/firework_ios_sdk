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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.26.3/FireworkVideo-v1.26.3.xcframework.zip",
            checksum: "b87d6a0cb0330e5365aac42bec252bc69c8dcf793e0ac1718f0a469243146e45")
    ]
)
