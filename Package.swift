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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.3-beta.2/FireworkVideo-v1.41.3-beta.2.xcframework.zip",
            checksum: "2b816ac52d5099aad1327fb902da25034d7672d5b3595980c6d1330411169b43")
    ]
)
