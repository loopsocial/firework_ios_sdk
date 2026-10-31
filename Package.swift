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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.12-beta.2/"
                + "FireworkVideo-v1.43.12-beta.2.xcframework.zip",
            checksum: "87cb1c4c4ff6fb9470e33575f2d2f3e3a6584c26845ce26de29e005f7f682029"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.12-beta.2/"
                + "FireworkVideo-static-v1.43.12-beta.2.xcframework.zip",
            checksum: "3d798c0a14097e0c6fca21a2030f582d75c270c6d14b24d01824f6bf352b005a"),
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
