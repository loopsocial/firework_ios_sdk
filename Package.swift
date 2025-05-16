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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.27.12/FireworkVideo-v1.27.12.xcframework.zip",
            checksum: "e211fac075f6019719736dc335a78d29f002b1a4771d8a999b27c2f5c80eab36")
    ]
)
