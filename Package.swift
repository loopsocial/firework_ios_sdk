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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.8/FireworkVideo-v1.43.3-beta.8-static.xcframework.zip",
            checksum: "fa87217208c716790686598d081d0e686c54e4331b7daa3621ac9ddf11de0870")
    ]
)
