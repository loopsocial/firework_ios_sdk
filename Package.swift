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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.33.3/FireworkVideo-v1.33.3.xcframework.zip",
            checksum: "d314b8a753a9c87f9bcee6c4b82823eead2fb83b5c1bd0a616349b69c513a926")
    ]
)
