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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.1-beta.7/FireworkVideo-v1.25.1-beta.7.xcframework.zip",
            checksum: "3e603f13d21b64a3b09b9ee813555f77bbc3bd13d6c0f95e3a0a1e080c1ade2e")
    ]
)
