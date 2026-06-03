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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.5-beta.10/"
                + "FireworkVideo-v1.43.5-beta.10.xcframework.zip",
            checksum: "7d891e99e5204cab89b0f236dd703d78fa2659dd9ec8500cce14cf71e029b903"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.5-beta.10/"
                + "FireworkVideo-static-v1.43.5-beta.10.xcframework.zip",
            checksum: "91527373bc68b2806bfe86e7da94b9d79d085b33afcf0a9a9ee228206244fab3"),
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
