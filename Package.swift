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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.4/FireworkVideo-v1.43.3-beta.4.xcframework.zip",
            checksum: "b4cb73266de8d56e7dff88e20e807cf6c134ba26670363f0c7ee4d3d9d5a50a3")
    ]
)
