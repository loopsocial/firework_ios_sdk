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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.3-beta.3/FireworkVideo-v1.24.3-beta.3.xcframework.zip",
            checksum: "b3b55f06c44a3e15ab3ccfdba811c697d714f2296d715129fa1d526aa032d139")
    ]
)
