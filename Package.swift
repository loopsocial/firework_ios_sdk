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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.0-beta.5/FireworkVideo-v1.43.0-beta.5.xcframework.zip",
            checksum: "abe46fc1a223d4f36f0fafbfec8b1720424985f5ca2f788e4f6aa520282dd782")
    ]
)
