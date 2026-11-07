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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.14-beta.1/"
                + "FireworkVideo-v1.43.14-beta.1.xcframework.zip",
            checksum: "a425cdb7d1c7988b4423cb8aa697fe4692bc8b2bfdf7d5acd60442caf2c92a30"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.14-beta.1/"
                + "FireworkVideo-static-v1.43.14-beta.1.xcframework.zip",
            checksum: "52ad5a9b46471f7947f660a8ceee14b91cf1ef69f17927dd8079f443e0c8b9b1"),
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
