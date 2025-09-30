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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.36.0-beta.9/FireworkVideo-v1.36.0-beta.9.xcframework.zip",
            checksum: "406ca565641f742fac3f7f34d8e7b7d3c7eb916f658e6aeec722145d33a8552b")
    ]
)
