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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.10-beta.1/"
                + "FireworkVideo-v1.43.10-beta.1.xcframework.zip",
            checksum: "966d76391e2e19493679bdde8e8eb7517b67816a8c29d325adbc65cf33b150ea"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.10-beta.1/"
                + "FireworkVideo-static-v1.43.10-beta.1.xcframework.zip",
            checksum: "af2284241e2513fe3fafc2c90138953c0e9aa0b9749b90cee0e09b5b959e3a67"),
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
