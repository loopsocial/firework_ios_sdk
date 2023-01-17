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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.5.0/FireworkVideo-v1.5.0.xcframework.zip",
                      checksum: "c913f148ff86dda9eeba7627fbe7e5785d936a80f6c48cd3db2030e14d81a89a"),
    ]
    
)
