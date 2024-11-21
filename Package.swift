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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.26.1/FireworkVideo-v1.26.1.xcframework.zip",
            checksum: "a978fb08801d3cca5588738d4e154be19e71f8a72201770f355b01d44694ff7b")
    ]
)
