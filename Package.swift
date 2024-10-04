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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.6/FireworkVideo-v1.24.6.xcframework.zip",
            checksum: "7bfa448f5121012e01d0a333c891bddbaca3fef8457539ad6d8a77fa1fd05147")
    ]
)
