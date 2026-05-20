// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "FireworkVideo",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "FireworkVideo",
                 targets: ["FireworkVideo"]),
        .library(name: "FireworkVideoStatic",
                 targets: ["FireworkVideoStatic"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "FireworkVideo",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.12/FireworkVideo-v1.43.3-beta.12.xcframework.zip",
            checksum: "d87552cf4ae28df1d8eb9da5979254df4fa647a301131099416b53202c8e9cf8"),
        .binaryTarget(
            name: "FireworkVideoStatic",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.12/FireworkVideo-static-v1.43.3-beta.12.xcframework.zip",
            checksum: "0082caa66fff23142b19c60016f9310a290b6a34504aae4ab231e70e65af34be")
    ]
)
