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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.36.0-beta.5/FireworkVideo-v1.36.0-beta.5.xcframework.zip",
            checksum: "4d1fb42059f3b9a02901dc74e93e182561e661d9289e1cde54c09744d6386e47")
    ]
)
