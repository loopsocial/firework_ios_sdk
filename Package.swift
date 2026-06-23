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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.45.0-beta.1/"
                + "FireworkVideo-v1.45.0-beta.1.xcframework.zip",
            checksum: "ba10daa3d6aa053d4d442cd69531e95f0e7a108bd92cded2a0152c87e512b98d"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.45.0-beta.1/"
                + "FireworkVideo-static-v1.45.0-beta.1.xcframework.zip",
            checksum: "8cf9d972770b9496cd9c03b419482e50b57a5ce9fe36033fda62d2103dedc458"),
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
