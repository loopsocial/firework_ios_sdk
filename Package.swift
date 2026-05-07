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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.6/FireworkVideo-v1.42.6.xcframework.zip",
            checksum: "91a2dbde339c692215d53f35ebbdb9c6db0f6f25bf4bcc939ad98680775dd0b6")
    ]
)
