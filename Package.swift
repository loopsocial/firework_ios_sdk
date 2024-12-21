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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.27.1/FireworkVideo-v1.27.1.xcframework.zip",
            checksum: "e6d8cef5e85ad2bed19c10720c83a9d52e3fbf427a50502a19ff7e79be6eab8a")
    ]
)
