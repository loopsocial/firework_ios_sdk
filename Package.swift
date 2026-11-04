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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.13-beta.10/"
                + "FireworkVideo-v1.43.13-beta.10.xcframework.zip",
            checksum: "8a5b36f23730cc6182182927cd65d534262e4eb9735badc4e9995cfbe168c66c"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.13-beta.10/"
                + "FireworkVideo-static-v1.43.13-beta.10.xcframework.zip",
            checksum: "a733fb29382dc8e7c01adb8f23c6990145c3cc7a7b67d4b509d67e13a74b92b2"),
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
