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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.29.0-beta.1/FireworkVideo-v1.29.0-beta.1.xcframework.zip",
            checksum: "ce6d87f6d7f49783d135c9b431ebb9731aaa658bb82dade6c30fdcd954ec8dec")
    ]
)
