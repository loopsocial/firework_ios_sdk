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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.46.1-beta.1/"
                + "FireworkVideo-v1.46.1-beta.1.xcframework.zip",
            checksum: "153a1fc5ce605bf58d14a3c9dc5810bc6591bcd1ae144f1533a39e666dac862b")
    ]
)
