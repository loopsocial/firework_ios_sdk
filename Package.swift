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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.33.0/FireworkVideo-v1.33.0.xcframework.zip",
            checksum: "3ee27f8936acd0ef56466b09a99f15baaecd698dbc2b347cfab0db3dce105054")
    ]
)
