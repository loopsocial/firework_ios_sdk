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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.30.0-beta.1/FireworkVideo-v1.30.0-beta.1.xcframework.zip",
            checksum: "c4978f1212d79ee7bc04ed4a69d03b733a120796c4a6df96f69a67844d417afd")
    ]
)
