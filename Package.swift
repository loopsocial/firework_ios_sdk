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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.1/FireworkVideo-v1.24.1.xcframework.zip",
            checksum: "6635e2f8a5a0782ab021249d4acff684788f1b4d1d1434a2e1d674884384c96f")
    ]
)
