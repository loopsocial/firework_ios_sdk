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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.5/FireworkVideo-v1.42.5.xcframework.zip",
            checksum: "d8f4fc1ebeadc05ab8aa0170e302e9a99a47da7c3ff6ff0666219d2b75fea77e")
    ]
)
