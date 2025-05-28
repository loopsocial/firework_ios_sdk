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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.30.2/FireworkVideo-v1.30.2.xcframework.zip",
            checksum: "3dff084a5c53e20e4503da5535a3201f695b27412f514cc702316122a4d36e34")
    ]
)
