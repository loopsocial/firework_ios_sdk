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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.1/FireworkVideo-v1.42.1.xcframework.zip",
            checksum: "e6ee1deedabe0e87dfa8814d9f9bae9ef4f7c10f6fa8d976434758dda020fbcf")
    ]
)
