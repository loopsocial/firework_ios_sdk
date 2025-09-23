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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.35.2-beta.3/FireworkVideo-v1.35.2-beta.3.xcframework.zip",
            checksum: "a2f20d57f5f92c08fd2ab189ac5a1e2d52dd46e8c95abb0f8e14c55a995bb826")
    ]
)
