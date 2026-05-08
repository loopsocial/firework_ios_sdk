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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.0-beta.7/FireworkVideo-v1.43.0-beta.7.xcframework.zip",
            checksum: "c6d962694f55f9ad5f4714c830c3e959e3e90abe3e66cd616be293b79f81ba89")
    ]
)
