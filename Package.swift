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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.37.2/FireworkVideo-v1.37.2.xcframework.zip",
            checksum: "9a2fdec13fb29a980bfe83fd5d700e1569fb17a02c2ccfd2fc4a30d38818783a")
    ]
)
