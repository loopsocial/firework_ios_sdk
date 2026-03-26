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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.6-beta.6/FireworkVideo-v1.41.6-beta.6.xcframework.zip",
            checksum: "683d5c1ed44767065ac3b3d22f2412bd66b894f33d4ce9198351d6f2d6ba466b")
    ]
)
