// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "FireworkVideo",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(name: "FireworkVideo",
                 targets: ["FireworkVideo"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "FireworkVideo",
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.1.0/FireworkVideo-v1.1.0.xcframework.zip",
                      checksum: "a590b0fd5ec6a9adde880d34d550ee361f365c4e8b57d32e3ebc828061dc2722"),
    ]
    
)
