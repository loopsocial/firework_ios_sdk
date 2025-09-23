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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.36.0-beta.4/FireworkVideo-v1.36.0-beta.4.xcframework.zip",
            checksum: "59a337c909596d29edaeae0ec85a03f32a71f103f75bd7ff5dd4031e0bfe6da3")
    ]
)
