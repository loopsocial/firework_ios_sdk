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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.40.4/FireworkVideo-v1.40.4.xcframework.zip",
            checksum: "fdb9948b9b817793caf3b914b75c9096403548dab7e9ba7676832a5b38115bf2")
    ]
)
