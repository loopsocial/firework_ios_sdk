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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.0-beta.3/FireworkVideo-v1.39.0-beta.3.xcframework.zip",
            checksum: "216cd52d2dc2663a80bee042327f5d3a629742550e075b30409bde1f4f66bac8")
    ]
)
