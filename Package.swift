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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.4/FireworkVideo-v1.39.4.xcframework.zip",
            checksum: "5e7aeecd8823cbbbff6341e856e976789c34dc6206b3b8def4bc6d48bd46ab70")
    ]
)
