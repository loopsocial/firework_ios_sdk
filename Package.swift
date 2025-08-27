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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.35.0-beta.5/FireworkVideo-v1.35.0-beta.5.xcframework.zip",
            checksum: "bf7e761026dee738631bf54642b0341bfc57bfde233ffaf40f4dbdf9570cb5ea")
    ]
)
