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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.0.0/FireworkVideo-v1.0.0.xcframework.zip",
                      checksum: "8c10d11069b3c5658a9b7407a96a52ae5ee0e47a1a73726846ce7bf2a9de4e4a"),
    ]
    
)
