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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.1-beta.1/FireworkVideo-v1.42.1-beta.1.xcframework.zip",
            checksum: "cc563256670116f1a5a2946b9bebce7d87f90e0fce74e768a26ccd76fd899f28")
    ]
)
