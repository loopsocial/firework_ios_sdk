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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.38.0-beta.7/FireworkVideo-v1.38.0-beta.7.xcframework.zip",
            checksum: "8df9445400c35b5ce6a010dbab502f07210f1b6a78da33b4ff8f815bed19b4a6")
    ]
)
