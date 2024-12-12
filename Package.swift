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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.27.0/FireworkVideo-v1.27.0.xcframework.zip",
            checksum: "ae007d4372692cff93f83bc374081081c8e1f9da925ec04bbcc4a81513623290")
    ]
)
