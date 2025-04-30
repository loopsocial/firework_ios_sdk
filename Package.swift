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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.30.0/FireworkVideo-v1.30.0.xcframework.zip",
            checksum: "3178a4287d6a9481d807806d5898f1663ac170169dd70e5df8cf2ff792a78da9")
    ]
)
