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
                 targets: ["FireworkVideoStatic"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "FireworkVideo",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.17/"
                + "FireworkVideo-v1.43.3-beta.17.xcframework.zip",
            checksum: "a4b07055455f1d2c2b93dcc92a6713bc37a1976e49298938b3617768a647a1a4"),
        .binaryTarget(
            name: "FireworkVideoStatic",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.17/"
                + "FireworkVideo-static-v1.43.3-beta.17.xcframework.zip",
            checksum: "60371c39215c88f04aaedaa8f154fd637a6a6bded148772a8da1ebcaa766b47e")
    ]
)
