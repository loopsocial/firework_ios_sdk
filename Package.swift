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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.6.0/FireworkVideo-v1.6.0.xcframework.zip",
                      checksum: "fe901b1913d5b35f6ee7243cdfd0b797d79ed101573dc21672c9582e6b259e49"),
    ]
    
)
