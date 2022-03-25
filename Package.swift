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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v0.14.1/FireworkVideo-v0.14.1.xcframework.zip",
                      checksum: "b0950ebc873b360c85a5d7fe957330158d491efda1cae18ea6ca93d081ac4d3a"),
    ]
    
)
