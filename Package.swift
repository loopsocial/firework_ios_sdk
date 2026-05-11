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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.8/FireworkVideo-v1.42.8.xcframework.zip",
            checksum: "fed796e1205f34ed655a00fd917cf22dcc311ee164077f58981d09bbe262a4cb")
    ]
)
