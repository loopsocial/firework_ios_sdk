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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v0.9.0/FireworkVideo-v0.9.0.xcframework.zip",
                      checksum: "38b4861608a932a78df87f5c353cf8c6b21db68f1a05212b20c8e029f4cb743f"),
    ]
    
)
