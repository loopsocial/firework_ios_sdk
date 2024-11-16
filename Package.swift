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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.2-beta.5/FireworkVideo-v1.25.2-beta.5.xcframework.zip",
            checksum: "e921787d2b1d12efdbab07e66525b627f786c2cc74e14724da86576a6b283a5c")
    ]
)
