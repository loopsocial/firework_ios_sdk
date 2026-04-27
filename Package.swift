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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.0-beta.2/FireworkVideo-v1.43.0-beta.2.xcframework.zip",
            checksum: "b6685091a7ad82504ce26b4fed8bc97c0d1f7fe12c591f6e1554e71ff8b62a1f")
    ]
)
