// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "New_Math_Package",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "New_Math_Package",
            targets: ["New_Math_Package"]),
    ],
    
    dependencies: [
        .package(url: "https://github.com/nidhi5920/LoggerSPM", from: "1.0.0"),
        .package(url: "https://github.com/nidhi5920/GreetSPM", from: "1.0.0")

    ],
    
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "New_Math_Package",

            dependencies: [
                .target(name: "Math_Functions"),
                .product(name: "Logger", package: "LoggerSPM"),
                .product(name: "GreetSPM", package: "GreetSPM")

            ]),
        
        .binaryTarget(
            name: "Math_Functions",
            path: "./Sources/Math_Functions.xcframework"
        )
    ]
)
