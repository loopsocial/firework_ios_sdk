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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.0-beta.4/FireworkVideo-v1.25.0-beta.4.xcframework.zip",
            checksum: "e2a94584727bbd693ca95d9fe17a491a1998792f503a508ef8253b775b3ff8ce")
    ]
)
