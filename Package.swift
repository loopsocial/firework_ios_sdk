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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.27.5/FireworkVideo-v1.27.5.xcframework.zip",
            checksum: "9148b46d21d0cd271d5739f40e21755e4192a0a7e4df6bc3be46efadb76e9b64")
    ]
)
