// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pokemon-tcg-sdk-swift",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "pokemon-tcg-sdk-swift",
            targets: ["pokemon-tcg-sdk-swift"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "pokemon-tcg-sdk-swift"),
        .testTarget(
            name: "pokemon-tcg-sdk-swiftTests",
            dependencies: ["pokemon-tcg-sdk-swift"]
        ),
    ]
)
