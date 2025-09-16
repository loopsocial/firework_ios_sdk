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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.36.0-beta.2/FireworkVideo-v1.36.0-beta.2.xcframework.zip",
            checksum: "a31fbb25f464427e1e52a9c16793088bb7c3f376cc04d709a75cbec2771cdde6")
    ]
)
