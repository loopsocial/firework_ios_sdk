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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.35.0-beta.1/FireworkVideo-v1.35.0-beta.1.xcframework.zip",
            checksum: "cb9f06b41ed073ab7fde4e3c603e9e0f91ef70acc622916d9d5a1ead9c86732f")
    ]
)
