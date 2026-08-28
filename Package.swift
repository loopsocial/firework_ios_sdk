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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.46.0-beta.7/"
                + "FireworkVideo-v1.46.0-beta.7.xcframework.zip",
            checksum: "d9724f50275119c3300267bf869c20aad8caba4039358e93d00376b1d57d6a2e"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.46.0-beta.7/"
                + "FireworkVideo-static-v1.46.0-beta.7.xcframework.zip",
            checksum: "f61be393d5d176313cc028fe1a5abedfc63ff1e68817507adc7414cf08638a84"),
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
