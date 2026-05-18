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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.7/FireworkVideo-v1.43.3-beta.7-static.xcframework.zip",
            checksum: "923d290aefcab11b7299dae4b661886e7cc4b24320188fe65fb5e29f95be9d01")
    ]
)
