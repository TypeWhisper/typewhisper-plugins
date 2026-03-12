# Example LLM Plugin

A minimal example plugin that demonstrates how to build an LLM provider for TypeWhisper using the TypeWhisperPluginSDK.

## What it does

This plugin echoes back the user's text with a prefix, serving as a starting point for building your own LLM provider plugin.

## Setup

No configuration required. The plugin works out of the box.

## Usage

1. Install the plugin
2. Select "Example LLM" as your LLM provider in TypeWhisper settings
3. Any transcribed text will be echoed back with an "[Example]" prefix

## Building from Source

```bash
cd src
swift build
```

