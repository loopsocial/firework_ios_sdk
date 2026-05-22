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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.14/"
                + "FireworkVideo-v1.43.3-beta.14.xcframework.zip",
            checksum: "11c8bd83130b91f210e30b27c65c13e4ee4aa50b2a7b80e911640a183f52c116"),
        .binaryTarget(
            name: "FireworkVideoStatic",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.14/"
                + "FireworkVideo-static-v1.43.3-beta.14.xcframework.zip",
            checksum: "9a4c1d96410fca4bc3ce39a042c1733ef01af0e89af291d817cf3c9a044d90c0")
    ]
)
