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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.33.2/FireworkVideo-v1.33.2.xcframework.zip",
            checksum: "143c9e0edba81fc67771558ff6bd89e6b57447f9ae18da9b5094477b77bbce28")
    ]
)
