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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.37.0-beta.5/FireworkVideo-v1.37.0-beta.5.xcframework.zip",
            checksum: "172d0551500a95a95eae8afb1cfb1bceb78161d566f45be1436c6847b44c71ec")
    ]
)
