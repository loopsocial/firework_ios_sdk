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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.13-beta.5/"
                + "FireworkVideo-v1.43.13-beta.5.xcframework.zip",
            checksum: "eaf448d0c281eb39f13c0dd2aec3cd5ae3ee55b5f4239a9762928255c876fe55"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.13-beta.5/"
                + "FireworkVideo-static-v1.43.13-beta.5.xcframework.zip",
            checksum: "d39e10a4257cd8685dc54848b744bb58c7ae27b96039b210b24349f6f1caf157"),
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
