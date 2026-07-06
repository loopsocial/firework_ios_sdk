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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.44.6-beta.2/"
                + "FireworkVideo-v1.44.6-beta.2.xcframework.zip",
            checksum: "285f56cf1a43afb0d811459950888efb6e82b89a8bb3a3eb1bdb0021f725617a"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.44.6-beta.2/"
                + "FireworkVideo-static-v1.44.6-beta.2.xcframework.zip",
            checksum: "e5162777c57adc7cee0804f723a5929eaad4d289b549443e5e767ae82b091d1b"),
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
