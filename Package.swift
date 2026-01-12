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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.0-beta.6/FireworkVideo-v1.39.0-beta.6.xcframework.zip",
            checksum: "688a05ce5535c3f76d3276dc7a2307b0c218499923833ba71a71e91d780321d3")
    ]
)
