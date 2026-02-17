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
            url: "https://github.com/InfiniteFalltrough/RoutingTableKitPackage/releases/download/v0.1.5/RoutingTableKit.xcframework.zip",
            checksum: "49ff218b7d2ef1cecbf3a57128498f401bf3f35aefcc4a03cd96724569220d0c"
        )
    ]
)
