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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.6-beta.1/FireworkVideo-v1.41.6-beta.1.xcframework.zip",
            checksum: "eb087eef9dc652701733aeb4d2a7782d643367ec19af4017ded5e027e3b4b9c3")
    ]
)
