// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "vapor-queues-fluent-driver",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "QueuesFluentDriver",
            targets: ["QueuesFluentDriver"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        .package(url: "https://github.com/vapor/fluent.git", from: "4.0.0-rc.2"),
        .package(url: "https://github.com/vapor/sql-kit.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/queues.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "QueuesFluentDriver",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                .product(name: "Fluent", package: "fluent"),
                .product(name: "SQLKit", package: "sql-kit"),
                .product(name: "Queues", package: "queues")
            ],
            path: "Sources"
        )
        /*.testTarget(
            name: "QueuesFluentDriverTests",
            dependencies: ["QueuesFluentDriver"]),*/
    ]
)
