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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.29.1-beta.5/FireworkVideo-v1.29.1-beta.5.xcframework.zip",
            checksum: "12e047e8910e1419fdfb6aadc3d47e96fd8317757e97cf25f35c22ac1e193e94")
    ]
)
