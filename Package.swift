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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.10/FireworkVideo-v1.41.10.xcframework.zip",
            checksum: "62cbb44c891c20e3e5eb1d17299fece25cd8bd9e7959e4b306d17e1bdfc4f800")
    ]
)
