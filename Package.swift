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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.36.0-beta.6/FireworkVideo-v1.36.0-beta.6.xcframework.zip",
            checksum: "c22c741690de0a956984bc9f8b2143c7292984fef50b42c226b186b88748f3c5")
    ]
)
