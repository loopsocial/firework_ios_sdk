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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.29.1-beta.2/FireworkVideo-v1.29.1-beta.2.xcframework.zip",
            checksum: "879394ba62856c8cc65a23e4ee03c106c2ad0a031b701b9bec7e415a32cc6690")
    ]
)
