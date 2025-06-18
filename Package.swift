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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.27.17/FireworkVideo-v1.27.17.xcframework.zip",
            checksum: "fe69c831d3e367fb54963ca102428255962ca73c00e3d8ac4f1e35a176138589")
    ]
)
