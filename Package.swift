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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.11-beta.1/"
                + "FireworkVideo-v1.43.11-beta.1.xcframework.zip",
            checksum: "ea5d1605da63ac50501e5e64acef2c05df5a9f5550630fb69f9fe3d365932df7"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.11-beta.1/"
                + "FireworkVideo-static-v1.43.11-beta.1.xcframework.zip",
            checksum: "8f20d86a74419e1216e13d3c0d76677b948a57412ce741cf28b2f0a831d43e50"),
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
