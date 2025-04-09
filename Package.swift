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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.29.1/FireworkVideo-v1.29.1.xcframework.zip",
            checksum: "4decce839d111d30dd731078ffd0075e6947158bba009bc5c4e4f56f39ce924c")
    ]
)
