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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.1-beta.5/FireworkVideo-v1.42.1-beta.5.xcframework.zip",
            checksum: "a0d663776e149a6288d8557aef1f28db924955eb2d178f0a2147f343181b5d0a")
    ]
)
