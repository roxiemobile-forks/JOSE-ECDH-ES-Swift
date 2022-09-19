// swift-tools-version: 5.6

import PackageDescription

// Swift Package Manager — Package
// @link https://docs.swift.org/package-manager/PackageDescription/PackageDescription.html

let package = Package(
    name: "ECDHESSwift",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "ECDHESSwift",
            type: .static,
            targets: [
                "ECDHESSwift",
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/krzyzanowskim/CryptoSwift",
            .upToNextMinor(from: "1.4.3")
        ),
        .package(
            url: "https://github.com/airsidemobile/JOSESwift",
            .upToNextMinor(from: "2.4.0")
        ),
    ],
    targets: [
        .target(
            name: "ECDHESSwift",
            dependencies: [
                "CryptoSwift",
                "JOSESwift",
            ],
            path: "ECDHESSwift/Classes"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
