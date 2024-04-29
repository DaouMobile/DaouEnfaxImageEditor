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
        .package(url: "https://github.com/DaouMobile/DaouGeometry2D", branch: "main")
//        .package(url: "https://github.com/ReactiveX/RxSwift", exact: "6.2.0"),
//        .package(url: "https://github.com/RxSwiftCommunity/RxGesture", exact: "4.0.4"),
//        .package(url: "https://github.com/SnapKit/SnapKit", exact: "5.0.1")
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
