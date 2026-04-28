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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.0-beta.4/FireworkVideo-v1.43.0-beta.4.xcframework.zip",
            checksum: "ad4a344fb7ba96b7cb5bf5594be184d33a8b0ad3a594bd47a9e86a2696110966")
    ]
)
