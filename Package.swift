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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.7.0/FireworkVideo-v1.7.0.xcframework.zip",
                      checksum: "899af41a379cd59193d370a81b0e5f34392b2a34f17f828aa19c11248b8f07bf"),
    ]
    
)
