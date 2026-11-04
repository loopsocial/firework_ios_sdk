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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.13-beta.8/"
                + "FireworkVideo-v1.43.13-beta.8.xcframework.zip",
            checksum: "614700c6ac0e6e4ff33eec284ac8de9bb0ceac3f3c19754abfe0040dbcff5db2"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.13-beta.8/"
                + "FireworkVideo-static-v1.43.13-beta.8.xcframework.zip",
            checksum: "af5d2d5944535c828c81d9d329315bed7ed5be6d52557f03faaf6f4c77c4b4ed"),
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
