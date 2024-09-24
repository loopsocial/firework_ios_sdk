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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.4-beta.2/FireworkVideo-v1.24.4-beta.2.xcframework.zip",
            checksum: "be4346d03ebd66dae6e3a7b1268ce4b6f00d3fa04f31a4adac3e28212af64fd0")
    ]
)
