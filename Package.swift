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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.3/FireworkVideo-v1.24.3.xcframework.zip",
            checksum: "59abd58ad8f0a882d02766454fa3e14924cc354027f430c313dde504f0db5e51")
    ]
)
