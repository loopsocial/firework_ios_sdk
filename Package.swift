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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v0.12.0/FireworkVideo-v0.12.0.xcframework.zip",
                      checksum: "284091cad76ac056df4cc4ddaffe901b698ce964507862ab6aa440892f6017d5"),
    ]
    
)
