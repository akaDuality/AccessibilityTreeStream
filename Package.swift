// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "VoiceOverRadarKit",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "VoiceOverRadarKit", targets: ["VoiceOverRadarKit"]),
    ],
    targets: [
        .target(
            name: "VoiceOverRadarKit",
            // UIKit accessibility traversal is Objective-C-flavoured and runs on
            // the main thread; Swift 5 mode keeps that interop friction-free.
            swiftSettings: [.swiftLanguageMode(.v5)]
        ),
        .testTarget(
            name: "VoiceOverRadarKitTests",
            dependencies: ["VoiceOverRadarKit"],
            swiftSettings: [.swiftLanguageMode(.v5)]
        ),
    ]
)
