# LazyVim Configuration Summary

## Overview
This is a comprehensive LazyVim setup with extensive customization, multiple themes, and specialized plugins for development workflows including ROS2, LaTeX, WordPress, and more.

## Core Configuration

### Base Setup
- **Framework**: LazyVim (Neovim starter configuration)
- **Plugin Manager**: lazy.nvim
- **Version**: LazyVim v8
- **Auto-update**: Enabled (checks for plugin updates periodically, no notifications)

### File Structure
```
~/.config/nvim/
├── init.lua              # Entry point, bootstraps lazy.nvim
├── lua/
│   ├── config/           # Core configuration
│   │   ├── autocmds.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua      # Plugin manager setup
│   │   └── options.lua
│   └── plugins/          # Plugin configurations (30+ custom plugins)
└── plugin/               # Additional plugin files
```

## LazyVim Extras Enabled

These official LazyVim extras are installed:
- `lazyvim.plugins.extras.editor.harpoon2` - Fast file navigation
- `lazyvim.plugins.extras.editor.neo-tree` - File explorer
- `lazyvim.plugins.extras.editor.telescope` - Fuzzy finder
- `lazyvim.plugins.extras.ui.alpha` - Dashboard

## Custom Options

### Editor Settings
- **Relative line numbers**: Enabled (`relativenumber = true`)
- **Diagnostic virtual text**: Disabled (cleaner inline diagnostics)

### Key Mappings

#### Window Navigation (Custom)
- `<C-h>` → Move to left window
- `<C-j>` → Move to window below
- `<C-k>` → Move to window above
- `<C-l>` → Move to right window

#### Diagnostics
- `<leader>e` → Show diagnostics in floating window

## Themes & Colorschemes

This setup includes an extensive collection of themes (13+ colorschemes):

1. **tokyonight.nvim** (Default fallback)
2. **catppuccin** 
3. **rose-pine**
4. **gruvbox.nvim**
5. **kanagawa.nvim**
6. **everforest**
7. **nord.nvim**
8. **monokai-pro.nvim**
9. **bamboo.nvim**
10. **aether.nvim**
11. **ethereal.nvim**
12. **flexoki-neovim**
13. **matteblack.nvim**
14. **hackerman.nvim**

### Dynamic Theme Loading
- Supports **omarchy** theme system integration
- Automatically loads theme from `~/.config/omarchy/current/theme/neovim.lua`
- Falls back to tokyonight if omarchy not available
- Hot-reload capability for omarchy themes

## Major Plugins & Features

### AI & Code Assistance
- **copilot.lua** - GitHub Copilot integration
  - Accept suggestion: `<C-h>`
  - Next suggestion: `<C-j>`
  - Previous suggestion: `<C-k>`
- **CopilotChat.nvim** - AI chat interface
  - Model: Claude Sonnet 4.5
  - Float window layout (60% width/height)
  - Quick chat: `<leader>ccq`
  - Open chat: `<leader>cc<CR>`
  - Reset: `<leader>ccl`
  - Custom prompt: "Yarrr" (pirate speak)

### Completion & Snippets
- **blink.cmp** - Fast completion engine
- **nvim-cmp** - Completion framework
- **friendly-snippets** - Snippet collection
- **lazydev.nvim** - Lua development

### LSP & Language Support
- **nvim-lspconfig** - LSP configurations
- **mason.nvim** + **mason-lspconfig.nvim** - LSP installer
- **conform.nvim** - Formatting
- **nvim-lint** - Linting

### Editor Enhancements
- **harpoon** (v2) - Quick file marks and navigation
- **flash.nvim** - Enhanced search and jump
- **telescope.nvim** + **telescope-fzf-native.nvim** - Fuzzy finding
- **neo-tree.nvim** - File explorer
- **trouble.nvim** - Diagnostics list
- **grug-far.nvim** - Search and replace
- **which-key.nvim** - Keybinding hints

### UI/UX
- **alpha-nvim** - Custom dashboard
- **bufferline.nvim** - Buffer tabs
- **lualine.nvim** - Status line
- **noice.nvim** - Enhanced UI messages
- **dressing.nvim** - Better vim.ui interfaces
- **snacks.nvim** - UI utilities
- **mini.icons** + **nvim-web-devicons** - Icon support

### Text Manipulation
- **nvim-surround** - Surround text objects
- **nvim-autopairs** - Auto-close pairs
- **mini.pairs** - Minimal auto-pairing
- **mini.ai** - Enhanced text objects
- **context.vim** - Show context of current function
- **flash.nvim** - Enhanced motions

### Git Integration
- **gitsigns.nvim** - Git decorations and operations

### Syntax & Treesitter
- **nvim-treesitter** - Treesitter integration
  - **nvim-treesitter-textobjects** - Treesitter-based text objects
  - **nvim-ts-autotag** - Auto-close HTML tags
- **ts-comments.nvim** - Smart comments

### Specialized Development

#### LaTeX
- **vimtex** - Full LaTeX support

#### Markdown
- **nvim-markdown-preview** - Markdown preview
- **render-markdown.nvim** - Enhanced markdown rendering

#### ROS2
- **nvim-ros2** - ROS2 development support
- Uses **lua-http** for HTTP requests

#### WordPress
- **wordpress.nvim** - WordPress development utilities

#### Data Files
- **rainbow_csv.nvim** - CSV file highlighting and manipulation

### Session Management
- **persistence.nvim** - Session management

### Utilities
- **plenary.nvim** - Lua utility library
- **nui.nvim** - UI components
- **todo-comments.nvim** - Highlight TODO comments

## Custom Plugin Configurations

The setup includes 30+ custom plugin configuration files in `lua/plugins/`:

1. `all-themes.lua` - All theme configurations
2. `alpha-custom.lua` - Custom dashboard
3. `autopairs.lua` - Auto-pair settings
4. `bufferline.lua` - Buffer line customization
5. `context.lua` - Context display settings
6. `copilot.lua` - Copilot configuration
7. `devicons.lua` - Icon customization
8. `disable-news-alert.lua` - Disable LazyVim news
9. `filetree.lua` - File tree settings
10. `flash.lua` - Flash motion config
11. `harpoon.lua` - Harpoon setup
12. `lualine.lua` - Status line customization
13. `markdown-preview.lua` - Markdown preview config
14. `nvim-ros2.lua` - ROS2 integration
15. `omarchy-theme-hotreload.lua` - Dynamic theme reloading
16. `paragraphs.lua` - Paragraph handling
17. `rainbow_csv.lua` - CSV file support
18. `render-markdown.lua` - Markdown rendering
19. `snacks-animated-scrolling-off.lua` - Disable animated scrolling
20. `surround.lua` - Surround configuration
21. `telescope.lua` - Telescope customization
22. `terminals.lua` - Terminal settings
23. `theme.lua` - Theme loader with omarchy support
24. `treesitter.lua` - Treesitter configuration
25. `trouble.lua` - Trouble diagnostics config
26. `vimtex.lua` - LaTeX configuration
27. `wordpress.lua` - WordPress development

## Performance Optimizations

### Disabled Runtime Plugins
To improve startup time, these default plugins are disabled:
- `gzip`
- `tarPlugin`
- `tohtml`
- `tutor`
- `zipPlugin`

## Additional Files
- **stylua.toml** - Lua formatting configuration
- **lazy-lock.json** - Plugin version lock file
- **lazyvim.json** - LazyVim state and extras
- **changes.md** - Likely tracks configuration changes

## Notes

- Configuration follows LazyVim conventions with overrides in `lua/config/` and plugins in `lua/plugins/`
- All custom plugins are NOT lazy-loaded by default (set in lazy.lua)
- Version pinning disabled to use latest git commits
- The setup is optimized for a multi-language, full-stack development workflow
- Strong emphasis on AI assistance (Copilot + CopilotChat)
- Theme flexibility with omarchy integration for dynamic theming

## Quick Reference

### Most Important Keybindings
- `<leader>cc<CR>` - Open Copilot Chat
- `<leader>ccq` - Quick Copilot question
- `<leader>e` - Show diagnostics
- `<C-h/j/k/l>` - Window navigation (overrides Copilot in normal mode)

### Getting Started
1. Open Neovim: `nvim`
2. LazyVim will show dashboard (alpha-nvim)
3. Press `<leader>` to see available commands (which-key)
4. Use `<leader>ff` for file finding (telescope)
5. Use `<leader>e` to toggle file tree (neo-tree)
