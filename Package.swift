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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v0.8.0/FireworkVideo-v0.8.0.xcframework.zip",
                      checksum: "221912e79f612a70b055b2eef2f347747c343d7c7d3a7b88476bd357607dcf3b"),
    ]
    
)
