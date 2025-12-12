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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.38.1/FireworkVideo-v1.38.1.xcframework.zip",
            checksum: "6c3fb0061c2773d34f8a7ad35c82accd1ef006a54596abd99d05d4e71dddc0ab")
    ]
)
