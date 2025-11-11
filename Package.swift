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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.38.0-beta.1/FireworkVideo-v1.38.0-beta.1.xcframework.zip",
            checksum: "2a94b2484fc3c9a0e5cb804c03673b018e87f555b7108c01854ccbdde3b126ce")
    ]
)
