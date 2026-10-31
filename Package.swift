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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.12-beta.3/"
                + "FireworkVideo-v1.43.12-beta.3.xcframework.zip",
            checksum: "6690c39030096121569805d9a525cd62106b35a2c2c0abe3724ac334e3a1112a"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.12-beta.3/"
                + "FireworkVideo-static-v1.43.12-beta.3.xcframework.zip",
            checksum: "c93fda92b9084b77dd5bd50f1390367d5520cc385c063a0b9d750a1f8c631318"),
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
