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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.35.3/FireworkVideo-v1.35.3.xcframework.zip",
            checksum: "b9be51ff0c4abfecd5f1b5f1df660097fbd1d1c1c94635486bc83912f918ff2f")
    ]
)
