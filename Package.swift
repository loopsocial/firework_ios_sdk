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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.38.0-beta.6/FireworkVideo-v1.38.0-beta.6.xcframework.zip",
            checksum: "d3d5e73039fad4788c636ae4da5b0eabc3f30184607f1a9f2811aa388d4ca507")
    ]
)
