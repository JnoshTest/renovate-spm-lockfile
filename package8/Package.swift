import PackageDescription

let package = Package(
    name: "test1",
    platforms: [
       .macOS(.v12)
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-system", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-async-algorithms", from: "0.0.1"),
    ],
    targets: [
        .executableTarget(
            name: "Run",
            dependencies: [
                .product(name: "AsyncAlgorithms", package: "swift-async-algorithms"),
                .product(name: "SystemPackage", package: "swift-system"),
            ]
        )
    ]
)
