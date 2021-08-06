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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v0.9.1/FireworkVideo-v0.9.1.xcframework.zip",
                      checksum: "890c82606f5c908e1428562774f72de10952a49acfef14485acb7672c8c702fb"),
    ]
    
)
