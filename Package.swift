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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.3-beta.2/FireworkVideo-v1.24.3-beta.2.xcframework.zip",
            checksum: "09884a102f8111edd250d96bf9c9c7778e8f450fd85e279e3d6f54685ca1e4b7")
    ]
)
