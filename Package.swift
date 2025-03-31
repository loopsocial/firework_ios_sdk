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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.29.1-beta.1/FireworkVideo-v1.29.1-beta.1.xcframework.zip",
            checksum: "b9f2efb2d8ff7885a16e03c3797cac5d42dd1c6f35912d8bc6f4ae88cc3ac05a")
    ]
)
