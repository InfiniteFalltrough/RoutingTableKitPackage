# RoutingTableKit

A cross-platform framework for inspecting the system routing and neighbor tables (IPv4 & IPv6).  
It lists all active routes and neighbor entries directly from the operating system, returning both a structured array of entries and a formatted, human-readable table for diagnostics and analysis.

- **Platforms**: iOS 15+, macOS 11+, tvOS 15+
- **Languages:** Swift / Objective-C 
- **Artifacts**: Prebuilt XCFramework via GitHub Releases

## Features
- **Enumerate routes** across IPv4 and IPv6.
- **Optionally include neighbor cache** entries (ARP/NDP) alongside routes.
- **Formatted table output** for quick diagnostics.
- **Rich route metadata**: flags, interface, MTU, RTT, packet counts, and more.

## Installation (Swift Package Manager)
Add the package to your project:

1) Xcode: File → Add Package Dependencies…

- URL: `https://github.com/InfiniteFalltrough/RoutingTableKitPackage`
- Version: use the latest tag (e.g. `v0.1.0` or later)

2) Or edit your `Package.swift`:

```swift
.dependencies([
    .package(url: "https://github.com/InfiniteFalltrough/RoutingTableKitPackage", from: "0.1.0")
])

.targets([
    .target(
        name: "YourApp",
        dependencies: [
            .product(name: "RoutingTableKit", package: "RoutingTableKitPackage")
        ]
    )
])
```

No additional entitlements or permissions are required; all data is retrieved from the kernel routing sockets available to apps.

## Usage

### Swift
```swift
import RoutingTableKit

// Get an array of NetworkRoute objects
let includeNeighbors = true
let routes = RoutingTableKit.getAllEntries(includeNeighbors: includeNeighbors)

for route in routes {
    print("dest=\(route.destination) gw=\(route.gateway) if=\(route.netif) flags=\(route.flags)")
}

// Or get a pre-formatted table (string)
let table = RoutingTableKit.getRoutingTable(includeNeighbors: includeNeighbors)
print(table)
```

### Objective‑C
```objc
@import RoutingTableKit;

BOOL includeNeighbors = YES;
NSArray<NetworkRoute *> *routes = [RoutingTableKit getAllEntriesIncludeNeighbors:includeNeighbors];
for (NetworkRoute *r in routes) {
    NSLog(@"dest=%@ gw=%@ if=%@ flags=%@", r.destination, r.gateway, r.netif, r.flags);
}

NSString *table = [RoutingTableKit getRoutingTableIncludeNeighbors:includeNeighbors];
NSLog(@"%@", table);
```

## API Overview

### `RoutingTableKit`
- `getAllEntries(includeNeighbors: Bool) -> [NetworkRoute]`
- `getRoutingTable(includeNeighbors: Bool) -> String`

Objective‑C selectors:
- `+ (NSArray<NetworkRoute *> *)getAllEntriesIncludeNeighbors:(BOOL)includeNeighbors;`
- `+ (NSString *)getRoutingTableIncludeNeighbors:(BOOL)includeNeighbors;`

### `NetworkRoute`
- `destination: String` – destination network/host
- `gateway: String` – gateway/router for the route
- `flags: String` – route flags (e.g., "UGHS")
- `refs: Int` – reference count
- `use: Int` – usage count (packets via this entry)
- `netif: String` – interface name (e.g., "en0", "utun0")
- `interfaceIndex: Int` – raw interface index
- `mtu: Int` – path MTU
- `expire: Int` – seconds remaining (0 = no expiration)
- `roundTripTime: Int` – RTT estimate in ms
- `packetsSent: Int` – packets sent using this route
- `messageType: Int` – routing message type (from kernel)

## License
Distributed under the #vik Non-Commercial Software License Agreement (v1.0).  
Free for personal or internal use.  
Commercial use requires prior written consent.  
Contact: vik.gkb@gmail.com
