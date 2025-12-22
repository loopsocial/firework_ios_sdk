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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.38.2/FireworkVideo-v1.38.2.xcframework.zip",
            checksum: "4e447bc2e0a9d0df5086f5cd55561035bd41e2c901ab63bb2c2884d92a827676")
    ]
)
