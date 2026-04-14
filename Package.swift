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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.1-beta.10/FireworkVideo-v1.42.1-beta.10.xcframework.zip",
            checksum: "043d184e32b5b35ae36077aa683f64b513cc7d75b7a1b8d59f5dca9195636803")
    ]
)
