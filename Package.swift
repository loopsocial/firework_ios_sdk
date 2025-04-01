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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.29.1-beta.4/FireworkVideo-v1.29.1-beta.4.xcframework.zip",
            checksum: "311f264ebb0cd9e9f777fe61220ef2daa45d502cd370e43a3fdf3e6ced5847cf")
    ]
)
