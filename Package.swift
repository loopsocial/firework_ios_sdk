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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.10/FireworkVideo-v1.42.10.xcframework.zip",
            checksum: "6b1bb8e3a35f6b1d7d17557cea96d3862d8698115cc7fc4893aa8bd5386b3447")
    ]
)
