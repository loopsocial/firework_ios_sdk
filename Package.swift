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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.37.0-beta.8/FireworkVideo-v1.37.0-beta.8.xcframework.zip",
            checksum: "2b4f638553ed6c5d9d047ee16fd9dfef67c58ef07038b787ecb288cfab3e5bdc")
    ]
)
