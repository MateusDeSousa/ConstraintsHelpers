// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ConstraintsHelpers",
    products: [
        .library(
            name: "ConstraintsHelpers",
            targets: ["ConstraintsHelpers"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "ConstraintsHelpers",
            dependencies: []),
        .testTarget(
            name: "ConstraintsHelpersTests",
            dependencies: ["ConstraintsHelpers"]),
    ]
)
