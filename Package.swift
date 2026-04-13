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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.1-beta.9/FireworkVideo-v1.42.1-beta.9.xcframework.zip",
            checksum: "a01971b5907b28ff8ec66596d4562e19cd8dafd4f4f1a7ac1d41e96711b4f638")
    ]
)
