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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.0-beta.5/FireworkVideo-v1.25.0-beta.5.xcframework.zip",
            checksum: "d1a8debe63550a31b4dc966fa8a560398a8e26fdbd0bea09390cc822f601a782")
    ]
)
