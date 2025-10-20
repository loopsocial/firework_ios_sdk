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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.37.0-beta.3/FireworkVideo-v1.37.0-beta.3.xcframework.zip",
            checksum: "42236330837be250699d770b539239de3ac870d05e4ad972a472eecce9da160a")
    ]
)
