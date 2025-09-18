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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.35.1/FireworkVideo-v1.35.1.xcframework.zip",
            checksum: "35dd9f6720919c25969200f303aa77db90b9b82feea6c74b2024ad1ae17c5763")
    ]
)
