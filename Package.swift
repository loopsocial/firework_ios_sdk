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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.0-beta.4/FireworkVideo-v1.24.0-beta.4.xcframework.zip",
            checksum: "cff5981045229d4ab31cb4fe2e26f6e97651acb936487e5600cead59639f1315")
    ]
)
