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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.8.0/FireworkVideo-v1.8.0.xcframework.zip",
                      checksum: "aa6530274fb385648e0bbe486f38685f5be29527b23500d01de53d139581e80e"),
    ]
    
)
