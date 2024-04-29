// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DaouEnfaxImageEditor",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DaouEnfaxImageEditor",
            targets: ["DaouEnfaxImageEditor"])
    ],
    dependencies: [
        .package(url: "https://github.com/DaouMobile/DaouGeometry2D", exact: "1.0.0"),
        .package(url: "https://github.com/ReactiveX/RxSwift", .upToNextMinor(from: "6.2.0")),
        .package(url: "https://github.com/RxSwiftCommunity/RxGesture", .upToNextMinor(from: "4.0.1")),
        .package(url: "https://github.com/SnapKit/SnapKit", .upToNextMinor(from: "5.0.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "DaouEnfaxImageEditor",
            dependencies: [
                "DaouGeometry2D",
                "RxSwift",
                "RxGesture",
                "SnapKit"
            ]
        ),
        .testTarget(
            name: "DaouEnfaxImageEditorTests",
            dependencies: ["DaouEnfaxImageEditor"]),
    ]
)
