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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.9/FireworkVideo-v1.24.9.xcframework.zip",
            checksum: "d53f71d4592e57dce0943c0a032fa9d65b66bdf694409e49a3516062a47c481a")
    ]
)
