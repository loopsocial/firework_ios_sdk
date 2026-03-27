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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.7-beta.2/FireworkVideo-v1.41.7-beta.2.xcframework.zip",
            checksum: "7f68c62b8924309e3685de5dfb3caf70ccc860a0701ccd4a98a1c3e56822809b")
    ]
)
