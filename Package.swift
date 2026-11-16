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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.49.0-beta.4/"
                + "FireworkVideo-v1.49.0-beta.4.xcframework.zip",
            checksum: "8474fad2126b76620a766345ef522b400a0c329428bfdfed019fef3fe3ddad7b"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.49.0-beta.4/"
                + "FireworkVideo-static-v1.49.0-beta.4.xcframework.zip",
            checksum: "bdebbab6e83cf7b8ccec2250bf9d2d1559397b49db487878860c091fbb3ddbe0"),
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
