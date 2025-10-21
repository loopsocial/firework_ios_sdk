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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.37.0-beta.4/FireworkVideo-v1.37.0-beta.4.xcframework.zip",
            checksum: "2ad388cec21809be0302071422a3b3b3d4cb21bd29de38236568df03fd5f0298")
    ]
)
