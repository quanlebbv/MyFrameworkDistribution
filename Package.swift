// swift-tools-version:5.3
import PackageDescription
let package = Package(
    name: "MyFramework",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "MyFramework", 
            targets: ["MyFramework"])
    ],
    targets: [
        .binaryTarget(
            name: "MyFramework", 
            path: "MyFramework.xcframework")
    ])
