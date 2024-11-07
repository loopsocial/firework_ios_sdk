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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.1-beta.4/FireworkVideo-v1.25.1-beta.4.xcframework.zip",
            checksum: "72284b95b03f1130170061212d88b99b211bda76633a2924e1fe21dcd2e09972")
    ]
)
