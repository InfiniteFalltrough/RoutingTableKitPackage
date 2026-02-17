// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "RoutingTableKit",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15),
        .macOS(.v11),
        .tvOS(.v15)
    ],
    products: [
        .library(
            name: "RoutingTableKit",
            targets: ["RoutingTableKit"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "RoutingTableKit",
            url: "https://github.com/InfiniteFalltrough/RoutingTableKitPackage/releases/download/v0.1.2/RoutingTableKit.xcframework.zip",
            checksum: "18998c7f529f99483c8c4d0819e04cc49e432555cd345943cad1682cb8173414"
        )
    ]
)
