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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.3/FireworkVideo-v1.41.3.xcframework.zip",
            checksum: "03645a1c0b93840ed7cda8bfda58d1d5fd83b82eb95f5dbf9f15f44a7af12870")
    ]
)
