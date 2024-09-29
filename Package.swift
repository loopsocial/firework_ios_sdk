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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.5-beta.4/FireworkVideo-v1.24.5-beta.4.xcframework.zip",
            checksum: "096cddd4e525775301de1965937c15395a0435f862ec335c73d2fa271d8515e1")
    ]
)
