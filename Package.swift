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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.0-beta.3/FireworkVideo-v1.25.0-beta.3.xcframework.zip",
            checksum: "5559134700514c99c717336aa7a09333653997302e55f79cee39c5303fbc7880")
    ]
)
