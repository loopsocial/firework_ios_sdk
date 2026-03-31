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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.9/FireworkVideo-v1.41.9.xcframework.zip",
            checksum: "999e7301e89b0f65595b23523d32d2583577ce1d99092f426c2e7b4e0e1c6db9")
    ]
)
