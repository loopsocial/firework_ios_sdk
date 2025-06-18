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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.27.16/FireworkVideo-v1.27.16.xcframework.zip",
            checksum: "fb3633a0c4058b11e0793036e37a519a3d035a0a1eeb8d9f48c5e80718f199ef")
    ]
)
