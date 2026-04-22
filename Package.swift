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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.3/FireworkVideo-v1.42.3.xcframework.zip",
            checksum: "beea86e801e30e2a5ca4b7251adea1c0fabe59e99e50e1bfb7814f9bdff224a6")
    ]
)
