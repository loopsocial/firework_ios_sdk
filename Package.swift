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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.5-beta.3/FireworkVideo-v1.24.5-beta.3.xcframework.zip",
            checksum: "bb391e6aef528945ef97a21db6630dafc0cdba2f4d077423507bdc32de83b8c5")
    ]
)
