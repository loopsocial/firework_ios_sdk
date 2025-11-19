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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.38.0-beta.4/FireworkVideo-v1.38.0-beta.4.xcframework.zip",
            checksum: "f9c9448a259452d6aa5dd37b0ed54017fefc8383a6c9a1e25e84384b0a087c59")
    ]
)
