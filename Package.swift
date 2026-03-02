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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.0/FireworkVideo-v1.41.0.xcframework.zip",
            checksum: "494e275369e2a6a7cc0ced074df7779063094fb1a7ba96befdf4adf69a3ef532")
    ]
)
