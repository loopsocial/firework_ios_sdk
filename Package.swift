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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v0.16.0/FireworkVideo-v0.16.0.xcframework.zip",
                      checksum: "fe9d049121a951f6e1d74eb52f109d305a2256ba6feb4827670405e0fa466954"),
    ]
    
)
