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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.0-beta.4/FireworkVideo-v1.42.0-beta.4.xcframework.zip",
            checksum: "8c9152fbf33bc1694e0c191bc7e84eeb5ee1a96351f74e296811c7194bf55e81")
    ]
)
