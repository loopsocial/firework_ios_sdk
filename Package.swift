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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.40.2/FireworkVideo-v1.40.2.xcframework.zip",
            checksum: "fc18a0cab4ae00303ef6eac52d6de15f3eb1ef8521ae9d8e8d273c4a640193fc")
    ]
)
