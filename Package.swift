// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-amplitude",
    platforms: [
        .iOS(.v10),
        .tvOS(.v9),
        .macOS(.v10_10),
        .watchOS(.v3),
    ],
    products: [
        .library(name: "Amplitude", targets: ["Amplitude"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ivalx1s/darwin-amplitude-ac.git", from: "1.0.010")
    ],
    targets: [
        .target(
            name: "Amplitude",
            dependencies: [
                .product(name: "AnalyticsConnector", package: "darwin-amplitude-ac")
            ],
            path: "Sources",
            resources: [
                .process("Resources"),
            ],
            publicHeadersPath: "Amplitude/Public"),
    ]
)

