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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.24.3-beta.1/FireworkVideo-v1.24.3-beta.1.xcframework.zip",
            checksum: "8416b1e80a6ac0e1e7de4782c05a501778afdb47cb356e58bd68b51f5bb0838f")
    ]
)
