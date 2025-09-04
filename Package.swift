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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.35.0-beta.11/FireworkVideo-v1.35.0-beta.11.xcframework.zip",
            checksum: "213f267a1de4080dd186f050c3c25af67273399a8e1583b157db2ce13c86bb85")
    ]
)
