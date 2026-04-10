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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.1-beta.4/FireworkVideo-v1.42.1-beta.4.xcframework.zip",
            checksum: "98231bf1980ea620cad3c528ef9881af00e6d28ce9254f1deb2a5ea3994cfd29")
    ]
)
