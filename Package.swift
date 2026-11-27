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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.49.0-beta.10/"
                + "FireworkVideo-v1.49.0-beta.10.xcframework.zip",
            checksum: "801373f143426b9eb7e5ad0c6a7dcd58905bbfdca2bb9f71b740bee9de2a54d7"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.49.0-beta.10/"
                + "FireworkVideo-static-v1.49.0-beta.10.xcframework.zip",
            checksum: "c2a5dd4a95faa2d1ac1cde6f956134716c099b73b68cbde3fd3d7a2435d8efd4"),
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
