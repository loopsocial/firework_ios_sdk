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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.1-beta.8/FireworkVideo-v1.42.1-beta.8.xcframework.zip",
            checksum: "6d0b918be361fe339afa705ecbb44eaa8a3ca7ee2dcb5bb9a2794975c9651f9c")
    ]
)
