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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.6/FireworkVideo-v1.41.6.xcframework.zip",
            checksum: "2044dfecfb0230e043f7ac71026f6967302e72549e9929e24b4365f5b5f42cf5")
    ]
)
