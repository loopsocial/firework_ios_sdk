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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.36.2/FireworkVideo-v1.36.2.xcframework.zip",
            checksum: "21e3d0b9facc001e66b22a7da35d4159ecd8317be8d51602cb9d0c37c7a827b8")
    ]
)
