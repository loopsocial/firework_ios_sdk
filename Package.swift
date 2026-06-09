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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.44.0-beta.3/"
                + "FireworkVideo-v1.44.0-beta.3.xcframework.zip",
            checksum: "d18d93e184a2919e9116e319678e521f63116b7e93b8a09cae12765fb5661d7e"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.44.0-beta.3/"
                + "FireworkVideo-static-v1.44.0-beta.3.xcframework.zip",
            checksum: "74c2d5304f89542a0ee042bb10152926b3f0daa5fce3ac222bd2ea08fe9b0a11"),
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
