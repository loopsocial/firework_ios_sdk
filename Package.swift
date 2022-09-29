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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.2.0/FireworkVideo-v1.2.0.xcframework.zip",
                      checksum: "8c30e81394c571affbf26f35f3a54bf16abdb5371564059dca2a2b0bfe9d3daa"),
    ]
    
)
