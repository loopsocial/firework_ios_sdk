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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.44.6-beta.1/"
                + "FireworkVideo-v1.44.6-beta.1.xcframework.zip",
            checksum: "3cb404f61cab7b23abcfdc34e758df91dbe8e5a2b90bd3f05a9fa51398cc5f23"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.44.6-beta.1/"
                + "FireworkVideo-static-v1.44.6-beta.1.xcframework.zip",
            checksum: "e434e9bc3c90d4a17ef78044b5c338eb65bf5e406c6eb667da39101f0f32d5de"),
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
