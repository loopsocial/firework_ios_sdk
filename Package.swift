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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.27.14/FireworkVideo-v1.27.14.xcframework.zip",
            checksum: "b5bf451263e30668f247025b350fea2b09cf4c3b26e15d23bbbcf645aea6baa7")
    ]
)
