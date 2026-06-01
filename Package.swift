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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.5-beta.6/"
                + "FireworkVideo-v1.43.5-beta.6.xcframework.zip",
            checksum: "a212c190b967fe52da8224c31f811a46106cbade01d377d0229b940e83517a6a"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.5-beta.6/"
                + "FireworkVideo-static-v1.43.5-beta.6.xcframework.zip",
            checksum: "e1f80e105406df48555836755d45ef0112e2912a9e4f0736262e87183c1cac7f"),
        .target(
            name: "FireworkVideoStaticResources",
            dependencies: ["FireworkVideoStaticBinary"],
            path: "Sources/FireworkVideoStaticResources",
            resources: [
                .copy("Resources/FireworkVideoResources.bundle")
            ],
            linkerSettings: [
                .unsafeFlags(["-ObjC"])
            ]
        )
    ]
)
