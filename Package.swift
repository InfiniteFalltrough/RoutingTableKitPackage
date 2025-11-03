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
            url: "https://github.com/InfiniteFalltrough/RoutingTableKitPackage/releases/download/v0.1.0/RoutingTableKit.xcframework.zip",
            checksum: "f704fe03631c4703843d00f3325a37207a63e7b6b53045ab417c40072bfe87f0"
        )
    ]
)
