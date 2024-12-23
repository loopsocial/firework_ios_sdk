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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.27.2/FireworkVideo-v1.27.2.xcframework.zip",
            checksum: "22f5cad5901bdd4dad34c0549dacc988cefa93e1716eb131120dd10d4c88d6bd")
    ]
)
