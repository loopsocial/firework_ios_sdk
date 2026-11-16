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
                 targets: ["FireworkVideoStaticResources"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "FireworkVideo",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.49.0-beta.3/"
                + "FireworkVideo-v1.49.0-beta.3.xcframework.zip",
            checksum: "0ee9ccd54aa17a6bd9555d5ea5777236485a49f838205375dfe6e80c12fe4f08"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.49.0-beta.3/"
                + "FireworkVideo-static-v1.49.0-beta.3.xcframework.zip",
            checksum: "9044372b77ed63fa33d547bab0a7e822afe820617796bb1ad9d8bc8d5276acde"),
        .target(
            name: "FireworkVideoStaticResources",
            dependencies: ["FireworkVideoStaticBinary"],
            path: "Sources/FireworkVideoStaticResources",
            resources: [
                .copy("Resources/FireworkVideoResources.bundle")
            ]
        )
    ]
)
