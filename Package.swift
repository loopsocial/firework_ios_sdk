// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "FireworkVideo",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(name: "FireworkVideo",
                 targets: ["FireworkVideo"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "FireworkVideo",
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.0.1/FireworkVideo-v1.0.1.xcframework.zip",
                      checksum: "f496b6b581521012b21e996d71441059a88b8a477b5f1d448e7ce50889ec9989"),
    ]
    
)
