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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.26/FireworkVideo-v1.43.3-beta.26.xcframework.zip",
            checksum: "35bf1113a5d70085a49c32234f76db7382de98c62fde2b20719e14ec44d268e9")
    ]
)
