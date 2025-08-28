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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.35.0-beta.8/FireworkVideo-v1.35.0-beta.8.xcframework.zip",
            checksum: "ca6b6ca77146ff6d8569d34e92460e4e0fb1f904fb564671c8f5ab05cdfd4ddc")
    ]
)
