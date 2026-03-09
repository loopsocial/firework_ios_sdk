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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.3-beta.1/FireworkVideo-v1.41.3-beta.1.xcframework.zip",
            checksum: "8081208bbba112c6f1482404607f625d80d260f680c41b82f8bc183720a2b157")
    ]
)
