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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.49.0-beta.6/"
                + "FireworkVideo-v1.49.0-beta.6.xcframework.zip",
            checksum: "a7e6cf5ac606c72487d1d8a1a3ade6102dadff3cdfdfe3c807262a0395ee0d7a"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.49.0-beta.6/"
                + "FireworkVideo-static-v1.49.0-beta.6.xcframework.zip",
            checksum: "b4afe04ec4e2e6693c62300e01961e498800dfe76cc1dfabf3fc193c0a00db66"),
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
