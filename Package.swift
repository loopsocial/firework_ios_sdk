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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.0-beta.1/FireworkVideo-v1.24.0-beta.1.xcframework.zip",
            checksum: "21f66ba77b094e0d36db5c0502b0be395e5356727d41bf533ed968f3c58c7069")
    ]
)
