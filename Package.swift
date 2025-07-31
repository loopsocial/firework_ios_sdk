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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.34.0-beta.2/FireworkVideo-v1.34.0-beta.2.xcframework.zip",
            checksum: "1fc1d2c8e681eb8093f76ecb831d48141402362d35523e8100a640f01ed19104")
    ]
)
