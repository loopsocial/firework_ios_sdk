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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.40.1/FireworkVideo-v1.40.1.xcframework.zip",
            checksum: "d3a2555e1de365b004fd42e5b8c982b41b65436b66edb8d0efcf3db893528962")
    ]
)
