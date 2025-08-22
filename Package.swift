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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.35.0-beta.3/FireworkVideo-v1.35.0-beta.3.xcframework.zip",
            checksum: "1fbea2018a1ff790011d915c037c2e20b4a9621a3b4f296a33e616ac2bc07902")
    ]
)
