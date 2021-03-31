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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v0.5.0/FireworkVideo-v0.5.0.xcframework.zip",
                      checksum: "0b8ed086711906f20b5ef594774d7b984e2cebd1969f2ba73e4aa71b8dfe7b2d"),
    ]
    
)