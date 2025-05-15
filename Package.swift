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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.27.11/FireworkVideo-v1.27.11.xcframework.zip",
            checksum: "d7596c704d70dc2fd2eb21ce6ebfdc2eccb74bc14639e5498f8911cebb6faded")
    ]
)
