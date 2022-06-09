// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "FireworkVideo",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(name: "FireworkVideo",
                 targets: ["FireworkVideo"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "FireworkVideo",
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v0.17.0/FireworkVideo-v0.17.0.xcframework.zip",
                      checksum: "ba314e51703a9a0c69e4578f1753a5fc25e79388ad5969e90f27f58ce3259a2c"),
    ]
    
)
