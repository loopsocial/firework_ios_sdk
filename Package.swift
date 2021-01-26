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
                      url: "https://www.github.com/loopsocial/firework_ios_sdk/releases/download/v0.1.0/FireworkVideo-v0.1.0.xcframework.zip",
                      checksum: "e27cbdd8f285b65a111221128fd710d62a56ee1d0f4883867c0f4d2d72a23270"),
    ]
    
)
