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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.35.0-beta.10/FireworkVideo-v1.35.0-beta.10.xcframework.zip",
            checksum: "2248224ffe819ddfcb06980f4eddf58edce4aa77cff9cc3cd5ad49e1790bc81a")
    ]
)
