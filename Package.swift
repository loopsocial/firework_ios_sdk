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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.27.7/FireworkVideo-v1.27.7.xcframework.zip",
            checksum: "23bb5a072d77552e3be98394058318ea8de63094bbeb0b5e21900eb8e8c7fa6c")
    ]
)
