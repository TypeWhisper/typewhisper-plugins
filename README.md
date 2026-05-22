# TypeWhisper Community Plugins

This repository is retired and will be archived. It was an experiment for a separate community plugin catalog, but TypeWhisper plugin contributions now belong in the platform repositories that own the app integration.

## Where to Contribute Plugins

- macOS plugins: [TypeWhisper/typewhisper-mac](https://github.com/TypeWhisper/typewhisper-mac)
- Windows plugins: [TypeWhisper/typewhisper-win](https://github.com/TypeWhisper/typewhisper-win)

The platform repository is the source of truth for build integration, review, release, and any add-on catalog listing. Please do not open new plugin submissions in this repository.

## Historical Structure

The archived experiment used this layout:

```
plugins/
  <plugin-slug>/
    manifest.json        # Plugin metadata
    README.md            # Documentation
    LICENSE              # Plugin license
    icon.png             # Optional (256x256)
    src/
      Package.swift      # Swift package manifest
      Sources/<Name>/
        <Name>.swift     # Plugin source code
```

## Plugin Types

- **TranscriptionEnginePlugin** - Speech-to-text engines
- **LLMProviderPlugin** - LLM providers for text processing
- **PostProcessorPlugin** - Text post-processing pipeline
- **ActionPlugin** - Custom actions with processed text

## Resources

- [Plugin SDK Documentation](https://typewhisper.com/addons/develop)
- [TypeWhisperPluginSDK](https://github.com/TypeWhisper/TypeWhisperPluginSDK)
- [TypeWhisper Website](https://typewhisper.com)

## License

Each plugin is licensed individually by its author. See the `LICENSE` file in each plugin directory.
