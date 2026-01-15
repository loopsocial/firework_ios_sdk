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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.0-beta.9/FireworkVideo-v1.39.0-beta.9.xcframework.zip",
            checksum: "2a30ee9bcc55b4dca47eefda7abcd0f3fe9a0a17365a75727f7753549a71c42d")
    ]
)
