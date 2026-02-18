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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.11/FireworkVideo-v1.39.11.xcframework.zip",
            checksum: "59a81f7c1a8157c4c3dcc47df4ae36fe79f827d5755b17779d37b6256522854f")
    ]
)
