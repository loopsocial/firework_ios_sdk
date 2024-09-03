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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.1-beta.3/FireworkVideo-v1.24.1-beta.3.xcframework.zip",
            checksum: "b4f51317390cab1b921fd738ccd887ec4f9475dabb6d3c1479664b56378d4f4e")
    ]
)
