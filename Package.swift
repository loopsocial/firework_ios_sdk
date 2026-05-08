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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.0-beta.10/FireworkVideo-v1.43.0-beta.10.xcframework.zip",
            checksum: "94c80558c104d5c98a7c4c1eb9abfb61eb29288c0648111f91f3dfdedeffec8d")
    ]
)
