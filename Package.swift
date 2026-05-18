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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.8/FireworkVideo-v1.43.3-beta.8.xcframework.zip",
            checksum: "43212af1405fbdb5ebdfde624093614d76591a4c44c0b1f726e01fc5de204192")
    ]
)
