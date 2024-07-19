// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RadixUI-Swift",
    platforms: [
        .iOS(.v14),
        .macOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "RadixUI-Swift",
            targets: ["RadixUI-Swift"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "RadixUI-Swift",
            resources: [
                .process("Resources"),
            ]
        ),
        .testTarget(
            name: "RadixUI-SwiftTests",
            dependencies: ["RadixUI-Swift"]),
    ]
)
