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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.0-beta.2/FireworkVideo-v1.42.0-beta.2.xcframework.zip",
            checksum: "6081536becc40d6a47d993a99c6b1ef39eabe43b9412ee5650f754f714a1ef54")
    ]
)
