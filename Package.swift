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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.13-beta.4/"
                + "FireworkVideo-v1.43.13-beta.4.xcframework.zip",
            checksum: "8ac6194a78bcf8cb8e64d7e0fb8d149045954ab17d7348d78e8374d72b0d0c4a"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.13-beta.4/"
                + "FireworkVideo-static-v1.43.13-beta.4.xcframework.zip",
            checksum: "6cf241f905feeece8dc15ef9f2cfc226ec6d58a33e0497fffeaaa891bb1e5850"),
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
