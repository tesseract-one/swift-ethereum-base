// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "EthereumTypes",
    products: [
        .library(name: "Ethereum", targets: ["Ethereum"]),
    ],
    dependencies: [
        .package(url: "https://github.com/attaswift/BigInt.git", from: "5.0.0"),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.0.0"),
        .package(url: "https://github.com/tesseract-one/Serializable.swift.git", from: "0.1.0"),
    ],
    targets: [
        .target(
            name: "Ethereum",
            dependencies: ["BigInt", "CryptoSwift", "Serializable"]
        ),
        .testTarget(
            name: "EthereumTests",
            dependencies: ["Ethereum"]
        )
    ]
)
