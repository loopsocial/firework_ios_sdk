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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.5-beta.2/"
                + "FireworkVideo-v1.43.5-beta.2.xcframework.zip",
            checksum: "9fffeec5a2c171d650fee2d85fa717e055d2ddb2a01128aa6deb76dbca1ff0f3"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.5-beta.2/"
                + "FireworkVideo-static-v1.43.5-beta.2.xcframework.zip",
            checksum: "b96c3e286bc19725af4f9e8f3b44e566bfd2697109ef8f9a71b5b8288d04a3ca"),
        .target(
            name: "FireworkVideoStaticResources",
            dependencies: ["FireworkVideoStaticBinary"],
            path: "Sources/FireworkVideoStaticResources",
            resources: [
                .copy("Resources/FireworkVideo.bundle"),
                .copy("Resources/LiveStreamKit_ChatUI.bundle"),
                .copy("Resources/LiveStreamKit_InteractionUI.bundle"),
                .copy("Resources/LiveStreamKit_ProductUI.bundle")
            ]
        )
    ]
)
