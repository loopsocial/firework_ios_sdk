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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.44.0-beta.2/"
                + "FireworkVideo-v1.44.0-beta.2.xcframework.zip",
            checksum: "55567712e6b7daa21411ba420911011892d5b9e6e34ca85022103ec4dc25aad9"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.44.0-beta.2/"
                + "FireworkVideo-static-v1.44.0-beta.2.xcframework.zip",
            checksum: "d8d1b4b3a5c34ae8af1fd53ed7748456e26f95227eda02745ef24b17ef3f20eb"),
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
