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
                 targets: ["FireworkVideoStaticWrapper"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "FireworkVideo",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.21/"
                + "FireworkVideo-v1.43.3-beta.21.xcframework.zip",
            checksum: "5330d68c1deee5df7434650be5e585d7e3d0fca4b28728205ae89a008fee9ac8"),
        .binaryTarget(
            name: "FireworkVideoStaticBinary",
            url: "https://github.com/loopsocial/firework_ios_sdk/releases/download/v1.43.3-beta.21/"
                + "FireworkVideo-static-v1.43.3-beta.21.xcframework.zip",
            checksum: "167ad79c413753e407f406e9e23dcc2257a8566a843417b76222fb4e50a52d33"),
        .target(
            name: "FireworkVideoStaticWrapper",
            dependencies: ["FireworkVideoStaticBinary"],
            path: "Sources/FireworkVideoStaticWrapper",
            resources: [.copy("Resources")]
        )
    ]
)
