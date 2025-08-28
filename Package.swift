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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.35.0-beta.7/FireworkVideo-v1.35.0-beta.7.xcframework.zip",
            checksum: "af6a37ec5ac69379ec0186925f0298a3e9235fc3708538eb82eb92156a9b8a32")
    ]
)
