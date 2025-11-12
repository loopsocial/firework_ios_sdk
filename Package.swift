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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.37.3/FireworkVideo-v1.37.3.xcframework.zip",
            checksum: "535059862dab2e615ff166e1aa5e09d4c07ba0f4863e1454bb5e0e2ac350bf5e")
    ]
)
