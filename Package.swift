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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.1/FireworkVideo-v1.39.1.xcframework.zip",
            checksum: "d9d32d18773e4a1697ad315d80ac09f905a428c444c13b5e5c18fd5aed1fab20")
    ]
)
