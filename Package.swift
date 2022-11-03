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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.3.0/FireworkVideo-v1.3.0.xcframework.zip",
                      checksum: "14976fe6aa2cfaa1683e4f9b697de472e1c7d2d03e5e8fec7469e0af3f7b3c99"),
    ]
    
)
