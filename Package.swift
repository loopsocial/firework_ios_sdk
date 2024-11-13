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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.1-beta.9/FireworkVideo-v1.25.1-beta.9.xcframework.zip",
            checksum: "41201758e066ea0dd5e0bb8dbdfdb503b817b4673a5d9ed8ba981ab70a49cbdd")
    ]
)
