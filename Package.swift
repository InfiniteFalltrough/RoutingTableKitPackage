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
            checksum: "dee5ee8edfaee88fb44a0e1a5d6c0b9018aba7218456490dd5cb0841ae07bcee"
        )
    ]
)
