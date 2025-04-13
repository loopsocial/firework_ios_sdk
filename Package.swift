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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.29.3/FireworkVideo-v1.29.3.xcframework.zip",
            checksum: "18562c6a5e237b970b633c552e70c0ab7bef990c4658db829b9c043a8f0bf7ab")
    ]
)
