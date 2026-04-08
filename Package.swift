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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.1-beta.3/FireworkVideo-v1.42.1-beta.3.xcframework.zip",
            checksum: "966369ac317e2cade1ab0e1c0e9eeaa0a4c1869096e9ea27d38956e0fcaade1a")
    ]
)
