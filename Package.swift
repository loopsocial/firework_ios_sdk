// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "FireworkVideo",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "FireworkVideo",
                 targets: ["FireworkVideo"]),
        .library(name: "FireworkVideoStatic",
                 targets: ["FireworkVideoStatic"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "FireworkVideo",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.20/"
                + "FireworkVideo-v1.43.3-beta.20.xcframework.zip",
            checksum: "8b7e867fbf149f2d00a9ccff141d3995d28d92dd402dc96e71176ee648e54f7f"),
        .binaryTarget(
            name: "FireworkVideoStatic",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.20/"
                + "FireworkVideo-static-v1.43.3-beta.20.xcframework.zip",
            checksum: "dd5d54c8df7f9fb969bb997353c52442b1752de1f04be97a1b4976d42c465296")
    ]
)
