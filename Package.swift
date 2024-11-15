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
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.25.2-beta.1/FireworkVideo-v1.25.2-beta.1.xcframework.zip",
            checksum: "5e337e94fac8ed4b564490031d9bc38e55a9989a29ebb58b88c8783c96ec9ee2")
    ]
)
