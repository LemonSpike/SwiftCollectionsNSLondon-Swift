// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "SwiftCollectionsAsAPackage",
    products: [
        .library(
            name: "SwiftCollectionsAsAPackage",
            targets: ["SwiftCollectionsAsAPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-collections.git", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        .target(
            name: "SwiftCollectionsAsAPackage",
            dependencies: [.product(name: "Collections", package: "swift-collections")]),
        .testTarget(
            name: "SwiftCollectionsAsAPackageTests",
            dependencies: ["SwiftCollectionsAsAPackage"]),
    ]
)
