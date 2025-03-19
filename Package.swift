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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.29.0-beta.2/FireworkVideo-v1.29.0-beta.2.xcframework.zip",
            checksum: "bccee76f003add61873a00132f0fa6f82033eba9c7da60c28b95a80b0778aab8")
    ]
)
