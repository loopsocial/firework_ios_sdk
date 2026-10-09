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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.46.4-beta.2/"
                + "FireworkVideo-v1.46.4-beta.2.xcframework.zip",
            checksum: "f55b57cba14be33ae9e1125bb7ac320d4898df808f39cb9462cdccb4c0773c2a")
    ]
)
