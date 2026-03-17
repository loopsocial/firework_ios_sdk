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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.0-beta.1/FireworkVideo-v1.42.0-beta.1.xcframework.zip",
            checksum: "9b0faaadc8a17afed6e64d12a50141d2dbdbadecf2551af713fbd9ebb93ac566")
    ]
)
