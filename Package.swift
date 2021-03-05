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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v0.3.0/FireworkVideo-v0.3.0.xcframework.zip",
                      checksum: "d8eca178d4692107ab4c76c204e50b8dafdaa3778b9e937f12eb4f4f24760cee"),
    ]
    
)
