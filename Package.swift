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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.0-beta.2/FireworkVideo-v1.25.0-beta.2.xcframework.zip",
            checksum: "a15e663d12b199e32cb3252ac75c0d946a4fbc0f68f3bfdc2d6fb5b07fd6c055")
    ]
)
