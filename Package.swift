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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.5-beta.11/"
                + "FireworkVideo-v1.43.5-beta.11.xcframework.zip",
            checksum: "2d125489ea808b72bcc17b4431faab1d19845c20f3063a9e6497ed9e1d4792e8"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.5-beta.11/"
                + "FireworkVideo-static-v1.43.5-beta.11.xcframework.zip",
            checksum: "0ad32d15dd4d8ef7f976ebd25c63dea74791ebe27ac96678a435301cd4628b4b"),
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
