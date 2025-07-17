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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.33.2-beta.4/FireworkVideo-v1.33.2-beta.4.xcframework.zip",
            checksum: "18faa295e6b7b392f1a64357af273fd4e9d0c4f08e5f2b88042d7069ae6e168c")
    ]
)
