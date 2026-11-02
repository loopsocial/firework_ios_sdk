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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.12-beta.10/"
                + "FireworkVideo-v1.43.12-beta.10.xcframework.zip",
            checksum: "c14606e15827f7d28c9c7fd73c25f31a53a3577b44eba5d6f4e9f804998de9fc"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.12-beta.10/"
                + "FireworkVideo-static-v1.43.12-beta.10.xcframework.zip",
            checksum: "27f3f7973de78d7aa4aff657dc3c26b3ef5b97815cfa38947889ecfb5955c248"),
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
