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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.44.0-beta.8/"
                + "FireworkVideo-v1.44.0-beta.8.xcframework.zip",
            checksum: "4c05cf79c53d219e7aaf6b166e46b03c97a5bb516c9316ea2dabe56180fe1168"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.44.0-beta.8/"
                + "FireworkVideo-static-v1.44.0-beta.8.xcframework.zip",
            checksum: "d2d7e275342212dc08cb06f71b6985f43d29a137b2fa6c66df5ed8bf27e9a83f"),
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
