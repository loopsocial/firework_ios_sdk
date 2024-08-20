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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.0-beta.3/FireworkVideo-v1.24.0-beta.3.xcframework.zip",
            checksum: "87131c0b35afc53e8c2093300b21cd9d9aff48b14a59b056e2ac6b96546bfaa9")
    ]
)
