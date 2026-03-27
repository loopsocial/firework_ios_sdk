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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.6-beta.7/FireworkVideo-v1.41.6-beta.7.xcframework.zip",
            checksum: "4441c1456f72bd19aa545b40c48c1be816e374bb20b706377044e319c7edad36")
    ]
)
