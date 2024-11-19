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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.2/FireworkVideo-v1.25.2.xcframework.zip",
            checksum: "9cdf533489be3977a0612e38409c72a44964b308f6ac4ef8251a2264f60a044d")
    ]
)
