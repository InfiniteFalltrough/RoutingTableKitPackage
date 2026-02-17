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
            url: "https://github.com/InfiniteFalltrough/RoutingTableKitPackage/releases/download/v0.1.10/RoutingTableKit.xcframework.zip",
            checksum: "83bea14daf7ee278d696227f8fd9c1033b6dd5e9c41c130af492409faa3bd717"
        )
    ]
)
