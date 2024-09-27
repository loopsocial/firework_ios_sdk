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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.4/FireworkVideo-v1.24.4.xcframework.zip",
            checksum: "63faad2a5778798ddbfab7b055c1c3eb94c2e4fee01308c4daaf6f52b0f635d8")
    ]
)
