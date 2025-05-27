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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.30.1/FireworkVideo-v1.30.1.xcframework.zip",
            checksum: "8c50490c6637eecc8e2bd39b1d31a705376b8eb180f6f317a2c5f92d2933ef93")
    ]
)
