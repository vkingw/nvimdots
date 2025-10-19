# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is **nvimdots** - a fast, modern, and modular Neovim configuration written entirely in Lua. It supports Neovim 0.11+ and provides a comprehensive development environment with LSP, completion, debugging, and AI chat capabilities.

## Architecture

### Core Structure
- **Entry Point**: `init.lua` - Main configuration entry point
- **Core Module**: `lua/core/` - Essential Neovim configuration
  - `init.lua` - Core initialization and setup
  - `options.lua` - Vim options and settings
  - `pack.lua` - Plugin manager (lazy.nvim) setup
  - `event.lua` - Autocommands and event handling
  - `global.lua` - Global variables and paths
  - `settings.lua` - User-configurable settings

### Plugin Management
- **Plugin Manager**: lazy.nvim
- **Plugin Categories**: Organized in `lua/modules/plugins/`
  - `completion.lua` - LSP, completion, and language servers
  - `editor.lua` - Text editing and navigation plugins
  - `lang.lua` - Language-specific plugins
  - `tool.lua` - Development tools and utilities
  - `ui.lua` - User interface and themes

### Keymap System
- **Main File**: `lua/keymap/init.lua` - Keymap initialization
- **Categories**:
  - `completion.lua` - LSP and completion keymaps
  - `editor.lua` - Text editing keymaps
  - `lang.lua` - Language-specific keymaps
  - `tool.lua` - Tool keymaps
  - `ui.lua` - UI keymaps
- **Helper System**: `lua/keymap/bind.lua` and `lua/keymap/helpers.lua`

### Configuration System
- **Plugin Configs**: `lua/modules/configs/` - Individual plugin configurations
- **Categories**:
  - `completion/` - LSP, completion, and formatting
  - `editor/` - Text editing and navigation
  - `lang/` - Language-specific configurations
  - `tool/` - Development tools
  - `ui/` - User interface and themes

## Development Workflow

### Installation
```bash
# Unix/Linux/macOS
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ayamir/nvimdots/HEAD/scripts/install.sh)"

# Windows (PowerShell 7.1+)
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/ayamir/nvimdots/HEAD/scripts/install.ps1'))
```

### Plugin Management
- **View Plugins**: `<leader>ph` - Open lazy.nvim UI
- **Sync Plugins**: `<leader>ps` - Install/update plugins
- **Update Plugins**: `<leader>pu` - Update all plugins
- **Install Plugins**: `<leader>pi` - Install missing plugins

### Configuration
- **Main Settings**: Edit `lua/core/settings.lua` for global configuration
- **User Overrides**: Create `lua/user/` directory for custom configurations
- **Plugin Configs**: Modify files in `lua/modules/configs/`

### Key Development Commands
- **Lazy.nvim**: `<leader>ph` - Plugin manager interface
- **Telescope**: `<leader>ff` - File finder
- **Trouble**: `<leader>ld` - Diagnostic viewer
- **LSP**: `<leader>la` - Code actions
- **Debugging**: `<leader>db` - Debugger

## NixOS Support

The repository includes Nix flake support for NixOS users:
- **Flake**: `flake.nix` - Nix package and module definitions
- **NixOS Module**: `nixos/` - Home Manager module
- **Development Shell**: `nix develop` - Development environment with all dependencies

## Customization

### User Configuration
Create a `lua/user/` directory to override default configurations:
- `user/settings.lua` - Override global settings
- `user/options.lua` - Override vim options
- `user/event.lua` - Add custom autocommands
- `user/keymap/init.lua` - Custom keymaps

### Plugin Management
- **Disable Plugins**: Add to `disabled_plugins` in `core/settings.lua`
- **Add Plugins**: Create files in `lua/user/plugins/`
- **Modify Configs**: Override in `lua/user/configs/`

## Key Features

### Performance
- Fast startup (<50ms on modern hardware)
- Lazy-loaded plugins
- Optimized runtime path

### Language Support
- **LSP**: Built-in support for multiple languages via Mason
- **Treesitter**: Syntax highlighting and text objects
- **Debugging**: DAP integration for multiple languages
- **Formatting**: Auto-format on save with multiple formatters

### AI Integration
- **Chat Models**: Multiple AI models via OpenRouter
- **Code Companion**: AI-assisted coding
- **API Key**: Configure via `CODE_COMPANION_KEY` environment variable

### UI/UX
- **Themes**: Catppuccin themes with transparent background support
- **Status Line**: Lualine with custom sections
- **Dashboard**: Custom startup screen
- **Icons**: Nerd Font icons throughout

## Troubleshooting

- Use `:checkhealth` to diagnose issues
- Check plugin status with `:Lazy`
- Review logs in Neovim's cache directory
- Ensure required dependencies are installed (see Wiki for prerequisites)

## Branch Information

- **main**: Stable Neovim 0.11+ support
- **0.12**: Nightly Neovim 0.12 support (unstable)
- **0.10**: Legacy Neovim 0.10 support
- **0.9**: Legacy Neovim 0.9 support