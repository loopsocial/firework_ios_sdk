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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.44.0-beta.7/"
                + "FireworkVideo-v1.44.0-beta.7.xcframework.zip",
            checksum: "02a55cc1478cac5c0a35468447a2d39338bd50b929c2cc480203df7e0ab4a40a"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.44.0-beta.7/"
                + "FireworkVideo-static-v1.44.0-beta.7.xcframework.zip",
            checksum: "388fce4c60174931a7d9a5eee6e4f08bba36cced7a6f1b79c46174222c364020"),
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
