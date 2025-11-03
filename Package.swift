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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.37.0-beta.9/FireworkVideo-v1.37.0-beta.9.xcframework.zip",
            checksum: "fa99e279fe052f92ae19562b7a3b7c20e270b002480b18f7ef51bc2a5a29d64c")
    ]
)
