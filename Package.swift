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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v0.14.0/FireworkVideo-v0.14.0.xcframework.zip",
                      checksum: "702d5e2eaf352bf719c0f66339cae33f0d9b222d0616ed2de233cbb27288705c"),
    ]
    
)
