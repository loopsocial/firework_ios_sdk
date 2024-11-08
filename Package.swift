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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.1-beta.5/FireworkVideo-v1.25.1-beta.5.xcframework.zip",
            checksum: "0abaea44e96ce67bbce5bb751bbadc91e9638f92e3c42a7f3909e070bfd372b7")
    ]
)
