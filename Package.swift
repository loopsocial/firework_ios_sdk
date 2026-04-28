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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.0-beta.3/FireworkVideo-v1.43.0-beta.3.xcframework.zip",
            checksum: "aaa6da7ca07670f1fabf10f0679800ea612f77b4ffb4caab1f814d8012cb2c0c")
    ]
)
