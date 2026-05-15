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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.1/FireworkVideo-v1.43.3-beta.1.xcframework.zip",
            checksum: "05bd7fd2e1f019dba485745011350d74b77b03209b096b4e12e648fb373759a5")
    ]
)
