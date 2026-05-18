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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.5/FireworkVideo-v1.43.3-beta.5.xcframework.zip",
            checksum: "6e8e9b47091a32939c529bb938a71996f1048760b63ededcf1d494ffbeee3dc4")
    ]
)
