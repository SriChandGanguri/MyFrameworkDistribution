// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyFramework",
    products: [
        .library(
            name: "MyFramework",
            targets: ["MyFramework", "TestPackageWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", "5.4.0"..."5.6.4"),
    ],
    targets: [
        .target(
            name: "TestPackageWrapper",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire"),
            ],
            path: "TestPackageWrapper"
        ),
        .binaryTarget(
            name: "MyFramework",
            path: "MyFramework.xcframework")
    ]
)
