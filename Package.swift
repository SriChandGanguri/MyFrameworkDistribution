// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyFramework",
    products: [
        .library(
            name: "MyFramework",
            targets: ["MyFramework"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "MyFramework",
            path: "MyFramework.xcframework")
    ]
)
