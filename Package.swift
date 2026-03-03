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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.1/FireworkVideo-v1.41.1.xcframework.zip",
            checksum: "31e605ebb63cff13b8e5e2e1eae2b58dc246a1d4567e1f7f5029062bda55cd0d")
    ]
)
