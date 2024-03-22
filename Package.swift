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
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.20.0/FireworkVideo-v1.20.0.xcframework.zip",
                      checksum: "5316ae85aa9ee65c8deaa2e834f77dd93745ce804495349038fe2b2dafcea2d7"),
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
