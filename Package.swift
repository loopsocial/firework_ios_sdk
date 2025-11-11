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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.38.0-beta.2/FireworkVideo-v1.38.0-beta.2.xcframework.zip",
            checksum: "a2baf72caf75019807414157a2b6632775204820ff88a1e0a55dc82228dc444e")
    ]
)
