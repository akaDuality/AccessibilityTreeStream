// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "AccessibilityTreeStream",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "AccessibilityTreeStream", targets: ["AccessibilityTreeStream"]),
    ],
    targets: [
        .target(
            name: "AccessibilityTreeStream",
            // UIKit accessibility traversal is Objective-C-flavoured and runs on
            // the main thread; Swift 5 mode keeps that interop friction-free.
            swiftSettings: [.swiftLanguageMode(.v5)]
        ),
        .testTarget(
            name: "AccessibilityTreeStreamTests",
            dependencies: ["AccessibilityTreeStream"],
            swiftSettings: [.swiftLanguageMode(.v5)]
        ),
    ]
)
