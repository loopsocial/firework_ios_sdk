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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.23.2/FireworkVideo-v1.23.2.xcframework.zip",
            checksum: "e5414c8f0bf33fa9117c3e80fbf5741119815e7aa84e5044f14eca094c23896e")
    ]
)
