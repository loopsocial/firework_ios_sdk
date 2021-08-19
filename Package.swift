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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v0.10.0/FireworkVideo-v0.10.0.xcframework.zip",
                      checksum: "4984c7a00ab1ba6ae9879800656471a84dbd5f27ef325ceb827c821d90d082b6"),
    ]
    
)
