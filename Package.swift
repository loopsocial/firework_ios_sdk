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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.0-beta.4/FireworkVideo-v1.24.0-beta.4.xcframework.zip",
            checksum: "9a4ee4fb83e396b728d7fdc7b0ac2b9d508cbae01e4f77ad4b8c3edf7fb9f160")
    ]
)
