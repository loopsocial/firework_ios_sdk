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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.7/FireworkVideo-v1.24.7.xcframework.zip",
            checksum: "7ad94df1f2da9b5242fc2f7cde68f1621082580f0b7b650b94adf5e02f8a1867")
    ]
)
