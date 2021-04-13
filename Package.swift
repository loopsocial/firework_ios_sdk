// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "FireworkVideo",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(name: "FireworkVideo",
                 targets: ["FireworkVideo"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "FireworkVideo",
                      url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v0.6.0/FireworkVideo-v0.6.0.xcframework.zip",
                      checksum: "21d5b4a4ba2f1fec12f7fbe5512acbf40230b5bdbc599356493ec03154dd0884"),
    ]
    
)