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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.0-beta.12/FireworkVideo-v1.43.0-beta.12.xcframework.zip",
            checksum: "03c420443ab45c7008965790532e7cb9a865e6255acc18e52031eb4cb583fc50")
    ]
)
