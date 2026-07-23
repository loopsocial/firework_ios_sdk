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
                 targets: ["FireworkVideoStaticResources"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "FireworkVideo",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.45.0-beta.11/"
                + "FireworkVideo-v1.45.0-beta.11.xcframework.zip",
            checksum: "2efa0cfbe78bddd08bede8d14f94a9b36d5479ad450770136077e727c85b07c9"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.45.0-beta.11/"
                + "FireworkVideo-static-v1.45.0-beta.11.xcframework.zip",
            checksum: "85841ac54796688b1d5b6c3c2c911e000e71e920cfd8ed2da5b851519d6803ac"),
        .target(
            name: "FireworkVideoStaticResources",
            dependencies: ["FireworkVideoStaticBinary"],
            path: "Sources/FireworkVideoStaticResources",
            resources: [
                .copy("Resources/FireworkVideoResources.bundle")
            ]
        )
    ]
)
