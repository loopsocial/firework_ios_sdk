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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.37.0/FireworkVideo-v1.37.0.xcframework.zip",
            checksum: "b32e878aaa17388c723e9c1aef39c3bc25d6b1e0e7c399708a2999a47d8bbb24")
    ]
)
