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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.27.9/FireworkVideo-v1.27.9.xcframework.zip",
            checksum: "380bf0bcf0ebfc248e3cddffda2f123e62b059ba2895f37a42d45af0ad9d28b5")
    ]
)
