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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.0-beta.1/FireworkVideo-v1.25.0-beta.1.xcframework.zip",
            checksum: "702626e5fe3c9618e881627a1a10c55e49bad2ee1daea781fbeaa41ad5c50dd7")
    ]
)
