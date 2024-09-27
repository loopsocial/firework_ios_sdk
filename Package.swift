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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.5-beta.1/FireworkVideo-v1.24.5-beta.1.xcframework.zip",
            checksum: "0e17de8d9648307e0f4d532d97d1d921e16eb5dee77898ae9d38e1d3db9b03f2")
    ]
)
