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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.31.0-beta.2/FireworkVideo-v1.31.0-beta.2.xcframework.zip",
            checksum: "074f7066c08683c9ade69512ee653c9f10ec22b0ddfcefc31280eb1d9cd62c34")
    ]
)
