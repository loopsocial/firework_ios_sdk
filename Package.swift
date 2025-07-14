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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.33.2-beta.2/FireworkVideo-v1.33.2-beta.2.xcframework.zip",
            checksum: "221dfe22f9f967752b029b1dfba0b55cdcd673e01d5bb523065f7651838ae164")
    ]
)
