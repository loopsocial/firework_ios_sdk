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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.7/FireworkVideo-v1.43.3-beta.7.xcframework.zip",
            checksum: "bf448a964a92c2867b9fdc4911e3df8cc506ed3cbf3dc3b9cc5fe76bfc1236e8")
    ]
)
