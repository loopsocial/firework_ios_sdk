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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.33.1/FireworkVideo-v1.33.1.xcframework.zip",
            checksum: "2ce24d94a65076efe993bc5adedbbb1ac487235f551cd138938f477f97898a44")
    ]
)
