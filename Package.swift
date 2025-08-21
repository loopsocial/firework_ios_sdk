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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.35.0-beta.2/FireworkVideo-v1.35.0-beta.2.xcframework.zip",
            checksum: "098c57738e68f6e1b69ec08d40247ec2f68a3a62d7797d1eec3787332d7b4ed5")
    ]
)
