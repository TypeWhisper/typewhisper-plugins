import Foundation
import TypeWhisperPluginSDK
import SwiftUI

@objc(ExampleLLMPlugin)
final class ExampleLLMPlugin: NSObject, LLMProviderPlugin {
    static let pluginId = "com.typewhisper.example-llm"
    static let pluginName = "Example LLM"

    private nonisolated(unsafe) var host: HostServices?

    let providerName = "Example LLM"
    let supportedModels = [
        PluginModelInfo(
            id: "echo-v1",
            displayName: "Echo V1",
            sizeDescription: "Local",
            languageCount: 0
        )
    ]

    var isAvailable: Bool { true }

    override init() {
        super.init()
    }

    func activate(host: HostServices) {
        self.host = host
    }

    func deactivate() {
        host = nil
    }

    func process(
        systemPrompt: String,
        userText: String,
        model: String?
    ) async throws -> String {
        return "[Example] \(userText)"
    }
}
