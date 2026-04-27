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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.0-beta.1/FireworkVideo-v1.43.0-beta.1.xcframework.zip",
            checksum: "f6999e2f614cb4490b3a19493fa9abbfc5fbb3371cd448fb28383615f4e1bc6c")
    ]
)
