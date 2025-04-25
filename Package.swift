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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.30.0-beta.2/FireworkVideo-v1.30.0-beta.2.xcframework.zip",
            checksum: "7821ddd64f5078b4e6ce9ca4d320b9707eb79ac23de92fc1579f766e2957163b")
    ]
)
