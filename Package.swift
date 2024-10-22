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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.8/FireworkVideo-v1.24.8.xcframework.zip",
            checksum: "79d59256326471f178706d4663eb317745304564fabf6ec2aa171fc85c4cbdd4")
    ]
)
