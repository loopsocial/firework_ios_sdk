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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.29.7/FireworkVideo-v1.29.7.xcframework.zip",
            checksum: "f763c8305f13460727bc2ead135c132c27c50a3f4ce810dd727e027e04ff40f9")
    ]
)
