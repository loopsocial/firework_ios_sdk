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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.26.2/FireworkVideo-v1.26.2.xcframework.zip",
            checksum: "8f3cee20fb12095ae9fac1ff9606aa5e476aac2ba700efb34bb0842f0252aac5")
    ]
)
