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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.40.0/FireworkVideo-v1.40.0.xcframework.zip",
            checksum: "19b2f07ba6a8a42ac01fa17b06bf4e37bb266bd36b2276eaa234fca81b6cd344")
    ]
)
