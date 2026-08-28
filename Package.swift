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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.46.0-beta.6/"
                + "FireworkVideo-v1.46.0-beta.6.xcframework.zip",
            checksum: "91c34969ea6e3aa8b0e5f5f03f4a91f98e00dc5c821a7994948c61c9e0237865"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.46.0-beta.6/"
                + "FireworkVideo-static-v1.46.0-beta.6.xcframework.zip",
            checksum: "883f37b70a380ad484a81ecff897521052ebb8f21bd698479b10d3d42e74117e"),
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
