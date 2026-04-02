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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.1-beta.2/FireworkVideo-v1.42.1-beta.2.xcframework.zip",
            checksum: "47eec4990a0c7d06b9234ee83a3ebc5c0f511e2d39cb777560752cd619ee7dbd")
    ]
)
