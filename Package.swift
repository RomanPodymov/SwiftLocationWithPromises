// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SwiftLocationWithPromises",
    platforms: [
        .iOS(.v11),
        .tvOS(.v11),
        .macOS(.v10_13)
    ],
    
    products: [
        .library(
            name: "SwiftLocationWithPromises",
            targets: ["SwiftLocationWithPromises"]),
    ],
    
    dependencies: [
        .package(url: "https://github.com/mxcl/PromiseKit.git", from: "8.2.0"),
        .package(url: "https://github.com/malcommac/SwiftLocation.git", from: "5.1.0")
    ],
    
    targets: [
        .target(
            name: "SwiftLocationWithPromises",
            dependencies: ["PromiseKit", "SwiftLocation"])
    ],
    swiftLanguageVersions: [.v5]
)
