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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.29.6/FireworkVideo-v1.29.6.xcframework.zip",
            checksum: "2bcb0915b809e5e52c8361e8d7c0e2c142cb8bf0969407b5210be25cd3f97f04")
    ]
)
