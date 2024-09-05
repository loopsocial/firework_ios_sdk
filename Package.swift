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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.1-beta.4/FireworkVideo-v1.24.1-beta.4.xcframework.zip",
            checksum: "bccc5672ca8d2b48f525bff0f4587f497a287e490f17b576a39d0f49d8a416a7")
    ]
)
