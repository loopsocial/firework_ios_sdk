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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.3/FireworkVideo-v1.43.3-beta.3.xcframework.zip",
            checksum: "70e1a49052dccdeb5538b617904caf3ad2ddec2e1356835c0083350799b60419")
    ]
)
