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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.29.9/FireworkVideo-v1.29.9.xcframework.zip",
            checksum: "c7a1983a4a77dc8b64660a8460afa0e2cbf61effa69a73130de7b610b12d8ccb")
    ]
)
