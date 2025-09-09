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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.36.0-beta.1/FireworkVideo-v1.36.0-beta.1.xcframework.zip",
            checksum: "6b235d34cc3a215bbbe7836434ecfa7eb9326cc661845647d8b0137549eb0218")
    ]
)
