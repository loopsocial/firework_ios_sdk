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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.44.0-beta.1/FireworkVideo-v1.44.0-beta.1.xcframework.zip",
            checksum: "9409078740e0431b165d64af3ac86bede0b73b6514636b3b8e4b4cedbcd26081")
    ]
)
