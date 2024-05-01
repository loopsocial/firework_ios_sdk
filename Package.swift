// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "FireworkVideo",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(name: "FireworkVideo",
                 targets: ["FireworkVideo"]),
        .library(name: "FireworkMultiHostStreaming",
                 targets: ["FireworkMultiHostStreaming"]),
        .library(name: "FireworkLowLatencyStreaming",
                 targets: ["FireworkLowLatencyStreaming"]),
        .library(name: "FireworkGoogleIMA",
                 targets: ["FireworkGoogleIMA"]),
        .library(name: "FireworkGoogleAdManager",
                 targets: ["FireworkGoogleAdManager"])
    ],
    dependencies: [
        .package(url: "https://github.com/loopsocial/firework_ios_sdk_agora_support.git",
                .upToNextMajor(from: "0.4.0")),
        .package(url: "https://github.com/loopsocial/firework_ios_sdk_ivs_support.git",
                .upToNextMajor(from: "0.5.0")),
        .package(url: "https://github.com/loopsocial/firework_ios_sdk_google_ima_support.git",
                .upToNextMajor(from: "0.3.0")),
        .package(url: "https://github.com/loopsocial/firework_ios_sdk_gam_support.git",
                .upToNextMajor(from: "0.3.0"))
    ],
    targets: [
        .binaryTarget(name: "FireworkVideo",
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.21.0/FireworkVideo-v1.21.0.xcframework.zip",
                      checksum: "8d394a70f1ee4151df4b7a081cb3e9e54455c03dac15c64b7f68c5beef6084a6"),
        .target(name: "FireworkMultiHostStreaming",
                dependencies: [
                    "FireworkVideo",
                    .product(name: "FireworkVideoAgoraSupport", package: "firework_ios_sdk_agora_support"),
                ]),
        .target(name: "FireworkLowLatencyStreaming",
                dependencies: [
                    "FireworkVideo",
                    .product(name: "FireworkVideoIVSSupport", package: "firework_ios_sdk_ivs_support"),
                ]),
        .target(name: "FireworkGoogleAdManager",
                dependencies: [
                    "FireworkVideo",
                    .product(name: "FireworkVideoGAMSupport", package: "firework_ios_sdk_gam_support"),
                ]),
        .target(name: "FireworkGoogleIMA",
                dependencies: [
                    "FireworkVideo",
                    .product(name: "FireworkVideoGIMASupport", package: "firework_ios_sdk_google_ima_support"),
                ])
    ]
    
)
