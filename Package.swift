// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Commandant",
    products: [
        .library(name: "Commandant", targets: ["Commandant"]),
    ],
    dependencies: [
        .package(url: "https://github.com/antitypical/Result.git", from: "3.2.1"),
        .package(url: "https://github.com/Quick/Quick.git", from: "1.2.0"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "7.0.2"),
    ],
    targets: [
        .target(name: "Commandant", dependencies: ["Result"]),
        .testTarget(name: "CommandantTests", dependencies: ["Commandant", "Quick", "Nimble"]),
    ],
    swiftLanguageVersions: [3, 4]
)
