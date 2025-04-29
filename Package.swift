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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.30.0-beta.3/FireworkVideo-v1.30.0-beta.3.xcframework.zip",
            checksum: "02d0fa745003907e6263b2e2bdc722fc4eff36b49dee016cabdf976fe17bfb79")
    ]
)
