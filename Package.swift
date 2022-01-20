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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v0.13.0/FireworkVideo-v0.13.0.xcframework.zip",
                      checksum: "490779b2341facf00c2f4de0821beba8eb6e1e17c29d44438ed2ec733cad0e4e"),
    ]
    
)
