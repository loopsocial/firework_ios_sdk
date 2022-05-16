// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "FireworkVideo",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(name: "FireworkVideo",
                 targets: ["FireworkVideo"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "FireworkVideo",
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v0.16.0/FireworkVideo-v0.16.0.xcframework.zip",
                      checksum: "258f59bcc4983b7a05ca876451d62fae860f9dc316a7a2e26982a995cd07c566"),
    ]
    
)
