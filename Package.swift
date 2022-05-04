// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "Convert",
    products: [
        .library(
            name: "Convert",
            targets: ["Convert"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Quick.git", from: "5.0.0"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "10.0.0"),
    ],
    targets: [
        .target(
            name: "Convert",
            dependencies: []),
        .testTarget(
            name: "ConvertTests",
            dependencies: [
                "Convert",
                "Quick",
                "Nimble"
            ]
        ),
    ]
)
