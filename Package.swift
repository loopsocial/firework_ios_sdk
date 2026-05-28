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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.5-beta.5/"
                + "FireworkVideo-v1.43.5-beta.5.xcframework.zip",
            checksum: "cceb7e4f18af3711db58590de4b4382d56440380e07c534d800d2d7a06e256dd"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.5-beta.5/"
                + "FireworkVideo-static-v1.43.5-beta.5.xcframework.zip",
            checksum: "62580a0988c8f7bbe87b7a35bdb7936f150777895100d29586133f962b74f9ed"),
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
