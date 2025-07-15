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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.33.2-beta.3/FireworkVideo-v1.33.2-beta.3.xcframework.zip",
            checksum: "5c472c82b871bacfb228cdb756b0469976b0f2ba9d7b0e31aa790b70c8a2450e")
    ]
)
