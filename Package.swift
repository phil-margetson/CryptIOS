// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "Crypt",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Crypt",
            targets: ["Crypt"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "Crypt",
            dependencies: [
                "App",
                "Flutter"
            ]
        ),
        .binaryTarget(
            name: "App",
            url: "https://github.com/phil-margetson/CryptIOS/releases/download/release/App.xcframework.zip",
            checksum: "eefdc1dc238edbbccd7f4f731431de22b660e83cdff3943c4aa393b180236c4a"
        ),
        .binaryTarget(
            name: "Flutter",
            url: "https://github.com/phil-margetson/CryptIOS/releases/download/release/Flutter.xcframework.zip",
            checksum: "2b17f94fa9722d406669f470d8a883e40b6cfb431d433e177983d2c1e17929bc"
        ),
        .testTarget(
            name: "CryptTests",
            dependencies: ["Crypt"]),
    ]
)



