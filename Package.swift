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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.47.0-beta.3/"
                + "FireworkVideo-v1.47.0-beta.3.xcframework.zip",
            checksum: "72e98b7a331c6bcfe1ecf0ea36aa9f7415fc94a48d7276e11669c24744958316"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.47.0-beta.3/"
                + "FireworkVideo-static-v1.47.0-beta.3.xcframework.zip",
            checksum: "9d33c798d121dd955748397f0f11cbaed9657a794b80a6425ecddc970bd66974"),
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
