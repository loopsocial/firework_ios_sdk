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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v0.11.0/FireworkVideo-v0.11.0.xcframework.zip",
                      checksum: "4f350c55c9fe2c9086c00b557d89e17742fd57d45a880c6062a471da514af095"),
    ]
    
)
