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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.1-beta.3/FireworkVideo-v1.25.1-beta.3.xcframework.zip",
            checksum: "7a317796bbe3f1848528c5e024a313d01aaa586fd0a2f419600ec67bb8f4f7dc")
    ]
)
