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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.45.0-beta.10/"
                + "FireworkVideo-v1.45.0-beta.10.xcframework.zip",
            checksum: "850a178321df422a1f9b25a5aa9e4a38f3f9bc4e4b2f6084611c11b6eabea9bb"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.45.0-beta.10/"
                + "FireworkVideo-static-v1.45.0-beta.10.xcframework.zip",
            checksum: "176490f6fe66c0360d244c3f5ea5e51c07049e8facd06cd7417a809ea90755ea"),
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
