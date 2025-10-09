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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.36.1/FireworkVideo-v1.36.1.xcframework.zip",
            checksum: "b1d01d984c906c80176ddbc2bc7ea36818c4e2fecbc0e056fc3feb672e567ba6")
    ]
)
