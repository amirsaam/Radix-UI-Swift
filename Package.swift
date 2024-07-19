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
                .process("RadixIcons/Icons/Abstract.xcassets"),
                .process("RadixIcons/Icons/Alignment.xcassets"),
                .process("RadixIcons/Icons/Arrows.xcassets"),
                .process("RadixIcons/Icons/Borders-Corners.xcassets"),
                .process("RadixIcons/Icons/Components.xcassets"),
                .process("RadixIcons/Icons/Design.xcassets"),
                .process("RadixIcons/Icons/Logos.xcassets"),
                .process("RadixIcons/Icons/Music.xcassets"),
                .process("RadixIcons/Icons/Objects.xcassets"),
                .process("RadixIcons/Icons/Typography.xcassets")
            ]
        ),
        .testTarget(
            name: "RadixUI-SwiftTests",
            dependencies: ["RadixUI-Swift"]),
    ]
)
