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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.5/FireworkVideo-v1.41.5.xcframework.zip",
            checksum: "620670a3240c7f89e3481b1e313a8c78b4240feb71978c8748da158b8f2ab7d2")
    ]
)
