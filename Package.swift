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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.16/"
                + "FireworkVideo-v1.43.3-beta.16.xcframework.zip",
            checksum: "ba8f684e1ac5068e6d952140e26c1b31f1b819efdc5812e7cb0f43f49f03bfd5"),
        .binaryTarget(
            name: "FireworkVideoStatic",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.16/"
                + "FireworkVideo-static-v1.43.3-beta.16.xcframework.zip",
            checksum: "d69f3b390a25dfeba3c551641647eb140668109873a77460ebc0103173a43a26")
    ]
)
