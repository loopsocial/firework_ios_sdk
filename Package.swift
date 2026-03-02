// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "FireworkVideo",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "FireworkVideo",
                 targets: ["FireworkVideo"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "FireworkVideo",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.1-beta.1/FireworkVideo-v1.41.1-beta.1.xcframework.zip",
            checksum: "5facf88b3f510965b2bac234c53aa87a6d162e303f1c40bb5ca78e63e664c18e")
    ]
)
