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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v0.7.0/FireworkVideo-v0.7.0.xcframework.zip",
                      checksum: "060c17cad804b39b6a9137decef0510d9b62c08b78b4678c833f120b41c6a706"),
    ]
    
)
