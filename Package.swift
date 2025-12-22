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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.0-beta.2/FireworkVideo-v1.39.0-beta.2.xcframework.zip",
            checksum: "f24753b782f3e3b003b66a34d216c2745a681024e202b804dc1f88aae5eb04d1")
    ]
)
