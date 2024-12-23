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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.27.3/FireworkVideo-v1.27.3.xcframework.zip",
            checksum: "5aac9e38a6f4d4286e5fd02ed3d9ffa6f581221ebd6fc98f082c3cf1cd5a3b54")
    ]
)
