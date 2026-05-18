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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.6/FireworkVideo-v1.43.3-beta.6.xcframework.zip",
            checksum: "1fcbad760f7262ca71d3d16147c60353e22c26cb3e96a9ce273bd8bfeeed6a1e")
    ]
)
