// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "FireworkVideo",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "FireworkVideo",
                 targets: ["FireworkVideo"]),
        .library(name: "FireworkVideoStatic",
                 targets: ["FireworkVideoStatic"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "FireworkVideo",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.15/"
                + "FireworkVideo-v1.43.3-beta.15.xcframework.zip",
            checksum: "4376a317bd765a5472fa678ca6868f0ee669f573e8b336ee540b09fcf8668cb2"),
        .binaryTarget(
            name: "FireworkVideoStatic",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.15/"
                + "FireworkVideo-static-v1.43.3-beta.15.xcframework.zip",
            checksum: "edb97a64a2a892e110cbeb76a616d23d3890a09c49a1beb066d9ed22f19b7d1b")
    ]
)
