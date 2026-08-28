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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.46.0-beta.8/"
                + "FireworkVideo-v1.46.0-beta.8.xcframework.zip",
            checksum: "bd6876255c9ddd3bee47140a951c62c53e73d2622cedc65daef9a858686b6a53")
    ]
)
