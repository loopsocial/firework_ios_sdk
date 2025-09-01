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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.35.0-beta.9/FireworkVideo-v1.35.0-beta.9.xcframework.zip",
            checksum: "552a1f1d847d9a20851ea9c2daa78d8e4cbefaa43eb43715c1ba6b1e1bfbf0e5")
    ]
)
