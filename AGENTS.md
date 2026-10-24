# AGENTS.md

Agent instructions for the modus.nvim codebase.

## Project Overview

This is a Neovim colorscheme plugin that ports the Emacs [Modus themes](https://github.com/protesilaos/modus-themes). It
has four variants: `operandi`, `operandi_tinted`, `vivendi`, and `vivendi_tinted`. It is pure Lua, has no build step and
no dependencies, and requires Neovim 0.9+.

## Commands

```bash
# Headless checks
nvim --headless -u NONE -l test/check_theme.lua

# Manual check
nvim -u NONE -c "set rtp+=$(pwd)" -c "colorscheme modus-vivendi" test/test.lua
```

## File Structure

```
colors/modus-<variant>.lua   # :colorscheme entry points
lua/modus/
├── init.lua                 # load(variant), setup(), get_fzf_colors(variant)
├── config.lua               # Configuration defaults
├── colors.lua               # get(variant): semantic roles from the palette
├── palettes/<variant>.lua   # Raw palettes from modus-themes.el
├── types.lua                # LuaLS annotations
├── util.lua                 # load_highlights, apply_overrides, get_styles
└── highlights/
    ├── init.lua             # Combines modules, applies overrides and on_highlights
    ├── editor.lua           # Editor UI
    ├── syntax.lua           # Legacy syntax groups
    ├── treesitter.lua       # Treesitter captures
    ├── lsp.lua              # LSP semantic tokens
    ├── diagnostics.lua      # Diagnostics and LSP UI
    └── integrations/        # Plugin highlights
```

## Color Rules

1. All colors must come from `modus-themes.el`. Do not add custom colors.
2. Palette files mirror the upstream palette. Names are the upstream names in snake case. Semantic mappings refer to
   named colors, for example `M.keyword = M.magenta_cooler`.
3. Highlight modules use only the semantic roles in `colors.lua`. Do not use raw palette names in highlight modules.
4. To choose a role for a highlight group, find the Emacs face that Modus defines for the same purpose. Use the palette
   mapping of that face.
5. Modus uses no bold or italic code constructs by default. Users enable them with `styles`.

## Code Style

- Use tabs for indentation.
- Use `snake_case` for variables and functions. Use `local M = {}` for modules.
- Add LuaDoc annotations with `@param` and `@return` to all functions.
- Link to a base group when one exists. Do not wrap links with style functions, because links ignore other attributes.
- Add a new integration as `highlights/integrations/<plugin>.lua` and register it in `integrations/init.lua`.
