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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.10/FireworkVideo-v1.43.3-beta.10.xcframework.zip",
            checksum: "d51f969f4ee54fa5a12394ddb129f8f264c6765b0109fb713b04abe9540f06c1"),
        .binaryTarget(
            name: "FireworkVideoStatic",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.10/FireworkVideo-static-v1.43.3-beta.10.xcframework.zip",
            checksum: "9614c5245629c537495a33865ac9600d06fc85f0e20ac6d6b3d55eb2d0309d34")
    ]
)
