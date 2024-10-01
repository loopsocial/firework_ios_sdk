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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.5/FireworkVideo-v1.24.5.xcframework.zip",
            checksum: "debfc92717917a4a7124fb87e31e5001fd3e85593988a433011ef6d7348805c0")
    ]
)
