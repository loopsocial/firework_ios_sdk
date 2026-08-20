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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.46.0-beta.3/"
                + "FireworkVideo-v1.46.0-beta.3.xcframework.zip",
            checksum: "3e1ccbc33ac8699c94691e19613e4f6e3b9cb9bddf5216ab8e733d162bae47e9"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.46.0-beta.3/"
                + "FireworkVideo-static-v1.46.0-beta.3.xcframework.zip",
            checksum: "452ea4afa2cc8842e746e094759a857f4695f4acbb15a5720cbbedc2b83cc7c8"),
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
