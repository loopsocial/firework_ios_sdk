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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.27.6/FireworkVideo-v1.27.6.xcframework.zip",
            checksum: "19d2b8a23f3bc511142be2c40dadf956211c5118427d02a43c2a6842765df102")
    ]
)
