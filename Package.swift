// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "Convert",
    products: [
        .library(
            name: "Convert",
            targets: ["Convert"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Quick.git", from: "2.0.0"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "8.0.0"),
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
