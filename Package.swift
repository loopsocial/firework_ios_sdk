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
                      url: "https://www.github.com/loopsocial/firework_ios_sdk/releases/download/v0.2.0/FireworkVideo-v0.2.0.xcframework.zip",
                      checksum: "745c1a8cf662f55da086bb40a2ab6cff32729b1828a700dddda404cdfaab82c0"),
    ]
    
)
