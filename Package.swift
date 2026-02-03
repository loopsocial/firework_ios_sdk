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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.10-beta.1/FireworkVideo-v1.39.10-beta.1.xcframework.zip",
            checksum: "3d925f331a4b25cfb47190571ffabdfc8e4794ced67094c9158c8f16192db24d")
    ]
)
