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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.11-beta.3/"
                + "FireworkVideo-v1.43.11-beta.3.xcframework.zip",
            checksum: "c254e0c82233e9eaf69398608f008942033e3f7d70cede8741452669c2f0ab7b"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.11-beta.3/"
                + "FireworkVideo-static-v1.43.11-beta.3.xcframework.zip",
            checksum: "bab16a5a1f164987d21551b891adc3f6c92b3fe6028e54cb2346ae32c6e1c01d"),
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
