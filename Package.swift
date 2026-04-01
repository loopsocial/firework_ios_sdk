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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.13/FireworkVideo-v1.41.13.xcframework.zip",
            checksum: "4497a8d3415cf3ceba5edd8d1e0c86557c985c449caba4d1ee478d829b50d9ae")
    ]
)
