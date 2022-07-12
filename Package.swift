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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v0.18.0/FireworkVideo-v0.18.0.xcframework.zip",
                      checksum: "f1d4ce87bc53220623fb6acc7ba5f1f1f002bfa7a9c87791242a01bae4d78a29"),
    ]
    
)
