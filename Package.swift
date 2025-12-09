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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.38.0/FireworkVideo-v1.38.0.xcframework.zip",
            checksum: "dd2c54cb68d86d6e9b1c75d61b23a2bcd8b0e7eb68b5e6d70d244657e939a622")
    ]
)
