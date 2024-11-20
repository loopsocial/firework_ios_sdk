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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.26.0/FireworkVideo-v1.26.0.xcframework.zip",
            checksum: "baa398248048ee6cf4765e0368bded7e43357929a1970a032d98ef55ffbb0a4d")
    ]
)
