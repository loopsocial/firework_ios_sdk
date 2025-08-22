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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.35.0-beta.4/FireworkVideo-v1.35.0-beta.4.xcframework.zip",
            checksum: "bb6fac0bb93130c8ea3e2c938513509c2726ff00a84ee775b4110ed7cc985e35")
    ]
)
