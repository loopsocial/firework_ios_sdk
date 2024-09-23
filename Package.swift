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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.4-beta.1/FireworkVideo-v1.24.4-beta.1.xcframework.zip",
            checksum: "3c01aa17240bcd4c571497eaf7e4284be3facdcac94521630eef7fb3fc538913")
    ]
)
