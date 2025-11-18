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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.38.0-beta.3/FireworkVideo-v1.38.0-beta.3.xcframework.zip",
            checksum: "2b2c5dfa529029d7176e5e3e6bad59f70a4a12a7189f71e912f9682440b05d9b")
    ]
)
