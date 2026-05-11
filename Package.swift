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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.0-beta.14/FireworkVideo-v1.43.0-beta.14.xcframework.zip",
            checksum: "546fda2606c54b3940b6fa63c60c71c3e4166ab0ab6b0676f5d60a49282d7868")
    ]
)
