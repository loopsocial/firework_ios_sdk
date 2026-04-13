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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.42.1-beta.6/FireworkVideo-v1.42.1-beta.6.xcframework.zip",
            checksum: "c45e5118d8ff41ef2a380f292709a45a83b31f4a05c8fb61437b38b151e6462e")
    ]
)
