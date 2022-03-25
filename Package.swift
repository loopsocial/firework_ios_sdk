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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v0.15.0/FireworkVideo-v0.15.0.xcframework.zip",
                      checksum: "0eb0f9072ec3a2a182f8c823cf356092d9e1dbcf9bdbaa373a91225b0d6fa93d"),
    ]
    
)
