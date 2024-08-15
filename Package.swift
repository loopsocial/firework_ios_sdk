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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.0-beta.2/FireworkVideo-v1.24.0-beta.2.xcframework.zip",
            checksum: "ad07635c39413b1ac5c39f835ddd321557653300b221619b1ba1d0256df9bed7")
    ]
)
