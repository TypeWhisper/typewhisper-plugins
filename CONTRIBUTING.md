# Contributing a Plugin

Thank you for building a plugin for TypeWhisper! This guide explains how to submit your plugin to the community catalog.

## Prerequisites

- macOS 14.0+ (Sonoma) and Xcode 16+
- Swift 6.0
- A working TypeWhisper plugin (see the [SDK docs](https://typewhisper.com/addons/develop))

## Directory Structure

Create a directory under `plugins/` with your plugin's slug as the name:

```
plugins/my-plugin/
  manifest.json
  README.md
  LICENSE
  icon.png              # Optional, 256x256 PNG
  src/
    Package.swift
    Sources/MyPlugin/
      MyPlugin.swift
```

The directory name must match the `slug` field in your manifest.

## manifest.json

```json
{
  "id": "com.yourname.my-plugin",
  "slug": "my-plugin",
  "name": "My Plugin",
  "author": "Your Name",
  "version": "1.0.0",
  "description": "A short description of what your plugin does.",
  "categories": ["llm"],
  "platforms": ["mac"],
  "minAppVersion": "1.0.0",
  "license": "MIT",
  "principalClass": "MyPlugin"
}
```

### Required Fields

| Field | Description |
|-------|-------------|
| `id` | Reverse-domain identifier (e.g. `com.developer.plugin-name`) |
| `slug` | URL-safe name, must match directory name |
| `name` | Display name |
| `author` | Your name or organization |
| `version` | Semver version (e.g. `1.2.3`) |
| `description` | Short description (one sentence) |
| `categories` | Array of: `transcription`, `llm`, `action`, `post-processing` |
| `platforms` | Array of: `mac`, `windows`, `ios` |
| `minAppVersion` | Minimum TypeWhisper version required |
| `license` | SPDX license identifier (e.g. `GPL-3.0-only`) |
| `principalClass` | Name of your plugin's principal class (must match `@objc(...)` annotation) |

### Optional Fields

| Field | Description |
|-------|-------------|
| `authorUrl` | URL to your website or profile |
| `homepage` | URL to the plugin's homepage |
| `sourceUrl` | URL to the plugin's source code (if different from this repo) |
| `apiDocsUrl` | URL to API documentation for the service your plugin uses |
| `icon` | Lucide icon name for display on the website (e.g. `Brain`, `Zap`) |

## Package.swift

Your `Package.swift` should reference the SDK from GitHub:

```swift
// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "MyPlugin",
    platforms: [.macOS(.v14)],
    products: [
        .library(name: "MyPlugin", type: .dynamic, targets: ["MyPlugin"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/TypeWhisper/TypeWhisperPluginSDK.git",
            from: "1.0.0"
        )
    ],
    targets: [
        .target(
            name: "MyPlugin",
            dependencies: [
                .product(name: "TypeWhisperPluginSDK", package: "TypeWhisperPluginSDK")
            ]
        )
    ]
)
```

## README.md

Your plugin README should include:

- **What it does** - clear description of the plugin's purpose
- **Setup** - any configuration steps (API keys, settings, etc.)
- **Usage** - how users interact with your plugin
- **Requirements** - external dependencies or accounts needed

## Icon

You can provide a custom icon in two ways:

1. **icon.png** - A 256x256 PNG file in your plugin directory
2. **icon field** - A [Lucide](https://lucide.dev) icon name in your manifest (used as fallback on the website)

If neither is provided, a default plugin icon is used.

## Submission Process

1. **Fork** this repository
2. **Create** your plugin directory with all required files
3. **Test** that your plugin builds: `cd plugins/my-plugin/src && swift build`
4. **Open a pull request** against `main`

### What happens next

- CI automatically validates your manifest, checks required files, and compiles your plugin
- The TypeWhisper team reviews your submission
- After merge, CI builds your plugin in Release mode and publishes it as a GitHub Release
- Your plugin appears in the [Plugin Catalog](https://typewhisper.com/addons)

## Updating Your Plugin

To update an existing plugin:

1. Bump the `version` field in `manifest.json` (CI enforces this)
2. Make your changes
3. Open a pull request

## Guidelines

- Keep plugins focused - one plugin should do one thing well
- Handle errors gracefully - don't crash the host app
- Respect user privacy - don't collect data without consent
- Use the keychain (via `HostServices`) for API keys, never hardcode them
- Test your plugin thoroughly before submitting
- Write a clear README so users know how to set up and use your plugin
