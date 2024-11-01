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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.1-beta.2/FireworkVideo-v1.25.1-beta.2.xcframework.zip",
            checksum: "2c9fd5343f22e8b8b27a78e89ecaf3177473aeb176057435052daf1910218ddd")
    ]
)
