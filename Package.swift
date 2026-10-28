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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.11-beta.4/"
                + "FireworkVideo-v1.43.11-beta.4.xcframework.zip",
            checksum: "abbbf8b595406df165957ad9a91f3b0d24a95078773612d77cbe1958679cc215"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.11-beta.4/"
                + "FireworkVideo-static-v1.43.11-beta.4.xcframework.zip",
            checksum: "acf3bb396b6d205f0c4a8fbd26a0ba02aef3d9a65076dea99deaeef24c191f6a"),
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
