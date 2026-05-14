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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.2/FireworkVideo-v1.43.2.xcframework.zip",
            checksum: "4da972a882b70189d2885d8e9b8dc51d72ac7d6388bdb892edf382ebf3861c2f")
    ]
)
