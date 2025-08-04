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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.34.0/FireworkVideo-v1.34.0.xcframework.zip",
            checksum: "e0f52daf86fbb5d41b63ea057315b62d7ca44d8e1dff4c21b4abde31c6f3ec5b")
    ]
)
