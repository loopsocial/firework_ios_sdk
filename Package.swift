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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.47.1-beta.1/"
                + "FireworkVideo-v1.47.1-beta.1.xcframework.zip",
            checksum: "c8b866856c3e50fd842de1b968f4e8d2a7fdfcc21096d032791636856bcf9d06")
    ]
)
