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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.0-beta.8/FireworkVideo-v1.39.0-beta.8.xcframework.zip",
            checksum: "f4d4244812368e9a8481434a50b42b09d0ffc148bcea529fe17e2586ad249c2f")
    ]
)
