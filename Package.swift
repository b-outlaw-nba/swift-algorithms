// swift-tools-version: 5.9
//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift Algorithms open source project
//
// Copyright (c) 2020 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
//
//===----------------------------------------------------------------------===//

import PackageDescription

let package = Package(
    name: "swift-algorithms",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15),
        .macOS(.v14),
        .tvOS(.v15),
        .visionOS(.v1),
        .watchOS(.v10)
    ],
    products: [
        .library(
            name: "Algorithms",
            targets: ["Algorithms"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-numerics.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "Algorithms",
            dependencies: [
              .product(name: "RealModule", package: "swift-numerics"),
            ]),
        .testTarget(
            name: "SwiftAlgorithmsTests",
            dependencies: ["Algorithms"]),
    ]
)
