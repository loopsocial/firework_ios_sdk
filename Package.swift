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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.41.6-beta.3/FireworkVideo-v1.41.6-beta.3.xcframework.zip",
            checksum: "a24efbf0496e2e0c4f911f26e91c5e21ff6596abe9c52073c54f3a6d6e8c110d")
    ]
)
