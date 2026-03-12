# TypeWhisper Community Plugins

Community-maintained plugins for [TypeWhisper](https://typewhisper.com), the speech-to-text app for macOS.

## Browse Plugins

Visit the [Plugin Catalog](https://typewhisper.com/addons) to discover and download plugins.

## Submit a Plugin

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed instructions on how to submit your plugin.

**Quick overview:**

1. Fork this repository
2. Create your plugin directory under `plugins/your-plugin-slug/`
3. Add `manifest.json`, `README.md`, `LICENSE`, and your Swift source in `src/`
4. Open a pull request
5. CI validates your submission automatically
6. After review and merge, your plugin is built and published

## Repository Structure

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
