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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.2-beta.4/FireworkVideo-v1.25.2-beta.4.xcframework.zip",
            checksum: "8735597b6e90b4f98cb7c33cff175058f6a6d5ff431f42a95960a0a7afaaab1e")
    ]
)
