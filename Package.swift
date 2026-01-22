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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.7/FireworkVideo-v1.39.7.xcframework.zip",
            checksum: "0f068a5b09dd0ecf392a08f8ec11d09c9ef9a5011757581ad882c10589911edf")
    ]
)
