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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.23.3/FireworkVideo-v1.23.3.xcframework.zip",
            checksum: "dc3cde43d9ce8afc005dcb8532336c14bc120f3f531d83b49d556f67bf6eb878")
    ]
)
