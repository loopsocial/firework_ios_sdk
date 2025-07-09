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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.33.2-beta.1/FireworkVideo-v1.33.2-beta.1.xcframework.zip",
            checksum: "69ea675063b473a9a1b9b147cae6048f08da26bb0d101cae35ee46a9ca760a40")
    ]
)
