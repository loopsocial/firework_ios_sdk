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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.37.0-beta.1/FireworkVideo-v1.37.0-beta.1.xcframework.zip",
            checksum: "fef69944d769c88932850029daf79b65c5ba984391be3e7177202442b7ba6e11")
    ]
)
