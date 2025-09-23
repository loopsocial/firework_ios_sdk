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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.35.2-beta.4/FireworkVideo-v1.35.2-beta.4.xcframework.zip",
            checksum: "636ebbb30cad92ffa4f64acf8fe279bf6e66d71f2c0498f638c66e6f9d857f17")
    ]
)
