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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.35.2-beta.2/FireworkVideo-v1.35.2-beta.2.xcframework.zip",
            checksum: "a24d23d1462f65fbafea35f3ccd35688de12bd0b7eed1463a4361de39c748777")
    ]
)
