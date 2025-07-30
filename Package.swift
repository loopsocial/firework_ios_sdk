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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.34.0-beta.1/FireworkVideo-v1.34.0-beta.1.xcframework.zip",
            checksum: "0ab94e22397c29eb035dd32b21311b95e97fc3ca6a296e117cdac87f17e4ce39")
    ]
)
