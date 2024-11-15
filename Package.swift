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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.2-beta.2/FireworkVideo-v1.25.2-beta.2.xcframework.zip",
            checksum: "bfee9815d07d691338c8f8f31b428b9ccbe780f74d35b91af5f78aadb1ef83f0")
    ]
)
