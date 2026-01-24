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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.39.9/FireworkVideo-v1.39.9.xcframework.zip",
            checksum: "fc0cac70189ac7fb867b73cb3930132839db22e061860c0771263abbf620c3e7")
    ]
)
