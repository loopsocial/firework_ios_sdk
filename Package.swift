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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.12-beta.7/"
                + "FireworkVideo-v1.43.12-beta.7.xcframework.zip",
            checksum: "3584a9a6307fb075443982d10ec34282d652f7eaa25bfe99d12f7139339271b9"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.12-beta.7/"
                + "FireworkVideo-static-v1.43.12-beta.7.xcframework.zip",
            checksum: "9ff1d21eaa0a400fee2de4bb6979491a92e93591ac0539edf17d979628c955db"),
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
