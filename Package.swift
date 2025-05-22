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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.27.13/FireworkVideo-v1.27.13.xcframework.zip",
            checksum: "28e114e15cd6368360234c22672bfaa58ccce42e82b00bd2e83e1ebbd6e7c776")
    ]
)
