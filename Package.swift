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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.12/FireworkVideo-v1.42.12.xcframework.zip",
            checksum: "a1dfc036b0dfda7cd41b48361f5efa54306bdd3ff41ed4c27c4edc78a559d8da")
    ]
)
