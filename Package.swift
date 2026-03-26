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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.6-beta.4/FireworkVideo-v1.41.6-beta.4.xcframework.zip",
            checksum: "2b4444bcf01e26c5b6b87fa62f558241eb0828f6c656f0f13ec55882ca2a0506")
    ]
)
