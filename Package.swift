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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.7/FireworkVideo-v1.41.7.xcframework.zip",
            checksum: "f55cde4de44b571b7423fe63ce8a4d9e707d0d4e7ae4ab589e749ed0f8b255f5")
    ]
)
