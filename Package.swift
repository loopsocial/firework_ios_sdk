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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.3/FireworkVideo-v1.39.3.xcframework.zip",
            checksum: "f93ae03d108c42b57a18bcb640834a59c43876c6ae75e45f791e48a20200447f")
    ]
)
