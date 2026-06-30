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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.45.0-beta.2/"
                + "FireworkVideo-v1.45.0-beta.2.xcframework.zip",
            checksum: "231f460d51d3a9735527da41fc9285b16695d4e58635b55f3910324a1fb27f4c"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.45.0-beta.2/"
                + "FireworkVideo-static-v1.45.0-beta.2.xcframework.zip",
            checksum: "3f83dd6396d6df97c639bdcf8eeb562612875d62c709e24d0d47236649c936a7"),
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
