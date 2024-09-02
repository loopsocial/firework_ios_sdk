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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.1-beta.2/FireworkVideo-v1.24.1-beta.2.xcframework.zip",
            checksum: "9ca64462ec21c78e43523b3d6bea2ffb06be1e603dbc26502593cd55b51206f9")
    ]
)
