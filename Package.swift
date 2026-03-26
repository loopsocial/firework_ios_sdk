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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.6-beta.5/FireworkVideo-v1.41.6-beta.5.xcframework.zip",
            checksum: "60068744a089b54a71a2b4ddd51bdeef3b66ae8c8d638654d631cd5ef658cf47")
    ]
)
