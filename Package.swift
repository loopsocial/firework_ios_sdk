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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.29.4/FireworkVideo-v1.29.4.xcframework.zip",
            checksum: "757e5949d8a4ba29ce7172f4a37fcd89176c8ec8fe2e64657019ef3d256f47d8")
    ]
)
