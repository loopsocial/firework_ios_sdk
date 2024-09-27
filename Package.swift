// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "FireworkVideo",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "FireworkVideo",
                 targets: ["FireworkVideo"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "FireworkVideo",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.5-beta.2/FireworkVideo-v1.24.5-beta.2.xcframework.zip",
            checksum: "e2a0839862fc1def757785901a46217fdf1b99b9caeb2eef19fed127c8362c8b")
    ]
)
