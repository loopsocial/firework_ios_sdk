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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.26.0-beta.1/FireworkVideo-v1.26.0-beta.1.xcframework.zip",
            checksum: "c2271d427c8dc704f2297b2d91a8ce6a3c70a4a14c994615805fde0eef6f36b9")
    ]
)
