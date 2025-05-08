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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.31.0-beta.1/FireworkVideo-v1.31.0-beta.1.xcframework.zip",
            checksum: "341cd6469ced673b78ca9fe3ed843d2b3639d8309d9de933d7fe3f75a28e96d3")
    ]
)
