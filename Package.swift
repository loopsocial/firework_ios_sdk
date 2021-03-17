// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "FireworkVideo",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(name: "FireworkVideo",
                 targets: ["FireworkVideo"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "FireworkVideo",
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v0.4.0/FireworkVideo-v0.4.0.xcframework.zip",
                      checksum: "cfd7894407e6f76598e7edcbd22694dcc79a5b2c3a3edd606e5e65ced29d52f8")
    ]
    
)