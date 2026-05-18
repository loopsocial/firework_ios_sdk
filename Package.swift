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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.2/FireworkVideo-v1.43.3-beta.2.xcframework.zip",
            checksum: "2025b4b3d119958c65f4546f45d5a57ac9767fa1d3174cac7f9a5eb12adcda5e")
    ]
)
