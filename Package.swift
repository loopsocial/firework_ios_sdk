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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.33.0-beta.1/FireworkVideo-v1.33.0-beta.1.xcframework.zip",
            checksum: "aa8bf7209d8a78331547343803d8c61f2568af7f296faedc1c9edc81bc9314a9")
    ]
)
