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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.6-beta.2/FireworkVideo-v1.41.6-beta.2.xcframework.zip",
            checksum: "8b1713643e983b391ef2a147346e36ebb30f8cb64e0a32f51c5970444a81bf7f")
    ]
)
