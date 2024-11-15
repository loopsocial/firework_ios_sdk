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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.2-beta.3/FireworkVideo-v1.25.2-beta.3.xcframework.zip",
            checksum: "3a439ad385434edbe58341af83142d78bc38cdb3f730ca74c3810fd544563888")
    ]
)
