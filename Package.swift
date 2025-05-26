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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.32.0-beta.1/FireworkVideo-v1.32.0-beta.1.xcframework.zip",
            checksum: "b14ce05b9ad654edeb8a31c5098ac3698cabcbaf818fabe297c4ea3989af7596")
    ]
)
