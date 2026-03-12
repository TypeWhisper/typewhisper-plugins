// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "ExampleLLM",
    platforms: [.macOS(.v14)],
    products: [
        .library(name: "ExampleLLM", type: .dynamic, targets: ["ExampleLLM"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/TypeWhisper/TypeWhisperPluginSDK.git",
            from: "1.0.0"
        )
    ],
    targets: [
        .target(
            name: "ExampleLLM",
            dependencies: [
                .product(name: "TypeWhisperPluginSDK", package: "TypeWhisperPluginSDK")
            ]
        )
    ]
)
