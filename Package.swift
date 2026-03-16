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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.4/FireworkVideo-v1.41.4.xcframework.zip",
            checksum: "ccc3bee435b5f14e126d11f4e8dc4e7e122a0528206ad96932a8392c7b0770ca")
    ]
)
