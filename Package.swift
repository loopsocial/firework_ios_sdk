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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.37.0-beta.6/FireworkVideo-v1.37.0-beta.6.xcframework.zip",
            checksum: "fa74bb5900a02e38fadf4257d1d0cd83bf8b2af4b067beae3d1c4f4b25edd065")
    ]
)
