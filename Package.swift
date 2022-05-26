// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SmartechSPM",
    platforms: [.iOS(.v10)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SmartechSPM",
            targets: ["SmartechSPM", "Smartech"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(name: "SmartechSPM"),
        .binaryTarget(name: "Smartech",
                      url: "https://github.com/ronzohan/SmartechSPM/releases/download/3.2.7/Smartech.xcframework.zip",
                     checksum: "f2c12ad19fc30e1c5a33b17c169ef7b4c639cfd7e3cfb2a0faee7880bc6b352b")
    ]
)
