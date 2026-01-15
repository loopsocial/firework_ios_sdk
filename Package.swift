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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.0-beta.10/FireworkVideo-v1.39.0-beta.10.xcframework.zip",
            checksum: "74a27f50c2232298a1937f9f8105d79cf95201fcfabe7a7f6f667813bef5e07a")
    ]
)
