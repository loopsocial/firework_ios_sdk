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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.6/FireworkVideo-v1.43.3-beta.6-static.xcframework.zip",
            checksum: "13fdcc4d847cb2f2261bd2f0c1dce6ead8e7496c1c4441dc4bf1fd56802695a1")
    ]
)
