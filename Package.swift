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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.46.0-beta.5/"
                + "FireworkVideo-v1.46.0-beta.5.xcframework.zip",
            checksum: "563d1fdc913c6e8a0283d5e26ca3ae7d736ee78130e87ba0feacb934781cb6b4"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.46.0-beta.5/"
                + "FireworkVideo-static-v1.46.0-beta.5.xcframework.zip",
            checksum: "cf2cf22fbef25b3d2ec6aedd86abf5732a1ed5bead70fb3e89e707248c0150bf"),
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
