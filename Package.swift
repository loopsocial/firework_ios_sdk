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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.0-beta.15/FireworkVideo-v1.43.0-beta.15.xcframework.zip",
            checksum: "4e79ed8497b9df066bf274b8b43b127fe145ed94b881e62f451f132458245060")
    ]
)
