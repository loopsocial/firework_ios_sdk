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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.46.4-beta.1/"
                + "FireworkVideo-v1.46.4-beta.1.xcframework.zip",
            checksum: "45ff6474823eca3fc164cbbb0e6df92e108234a81900e1f3ce89d5c1a6031371")
    ]
)
