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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.29.1-beta.3/FireworkVideo-v1.29.1-beta.3.xcframework.zip",
            checksum: "40e627505c6aa6d8c7a74023ef517169c4774e9f199249022eefe249a7aec39f")
    ]
)
