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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.26.4/FireworkVideo-v1.26.4.xcframework.zip",
            checksum: "e0d72c29b7b494bfc69a76898508b9d2a01d8e99f144a873995ad09aa4004164")
    ]
)
