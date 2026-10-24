# modus.nvim

A port of the [Modus themes](https://github.com/protesilaos/modus-themes) by Protesilaos Stavrou for Neovim.

![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Neovim](https://img.shields.io/badge/Neovim-0.9+-green.svg)

## Variants

| Colorscheme             | Background | Palette source                         |
| ----------------------- | ---------- | -------------------------------------- |
| `modus-operandi`        | Light      | `modus-themes-operandi-palette`        |
| `modus-operandi-tinted` | Light      | `modus-themes-operandi-tinted-palette` |
| `modus-vivendi`         | Dark       | `modus-themes-vivendi-palette`         |
| `modus-vivendi-tinted`  | Dark       | `modus-themes-vivendi-tinted-palette`  |

## Features

- **Upstream palettes**: All colors come from `modus-themes.el`.
- **Upstream mappings**: Highlight groups use the same semantic mappings as the Emacs faces.
- **Treesitter and LSP**: Support for Treesitter captures, LSP semantic tokens, and diagnostics.
- **Plugin support**: blink.cmp, Copilot, copilot.lua, fzf-lua, gitsigns.nvim, and nvim-tree.lua.
- **Configuration**: Transparent background, styles, and highlight overrides.
- **Terminal colors**: 16 ANSI colors from the Modus terminal mappings.

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "vcraescu/modus.nvim",
  priority = 1000,
  config = function()
    require("modus").setup({
      -- Your configuration here (optional)
    })
    vim.cmd("colorscheme modus-vivendi")
  end,
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'vcraescu/modus.nvim'
```

Then, in your `init.lua`:

```lua
require("modus").setup()
vim.cmd("colorscheme modus-operandi")
```

## Usage

```lua
-- Use the colorscheme command
vim.cmd("colorscheme modus-vivendi-tinted")

-- Or load a variant directly
require("modus").load("vivendi_tinted")
```

The Lua variant names are `operandi`, `operandi_tinted`, `vivendi`, and `vivendi_tinted`.

## Configuration

```lua
require("modus").setup({
  -- Transparent background (default: false)
  transparent = false,

  -- Terminal colors (default: true)
  terminal_colors = true,

  -- Style customization (Modus uses no bold or italic code constructs by default)
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = {},
    variables = {},
  },

  -- Return a table of highlight overrides
  overrides = function(colors)
    return {
      Function = { fg = colors.func, bold = true },
    }
  end,

  -- Or modify the highlights in place
  on_highlights = function(highlights, colors)
    highlights.Comment = { fg = colors.comment, italic = true }
  end,
})
```

Available style properties: `italic`, `bold`, `underline`, `undercurl`, and `strikethrough`.

## Color Palette

Colors are in two layers:

- `lua/modus/palettes/<variant>.lua`: The raw Modus palette. Each name is the `modus-themes.el` name in snake case, for
  example `bg-main` becomes `bg_main`. Semantic mappings, for example `keyword` or `fnname`, refer to named colors.
- `lua/modus/colors.lua`: The semantic roles that the highlight modules and the configuration callbacks use.

Use the semantic names when you define highlights:

- **Backgrounds**: `bg`, `bg_dim`, `bg_active`, `bg_inactive`, `bg_popup`
- **Foregrounds**: `fg`, `fg_dim`, `fg_alt`
- **Code**: `keyword`, `builtin`, `string`, `docstring`, `constant`, `func`, `func_call`, `type`, `property`, `comment`,
  `preprocessor`
- **UI**: `cursorline`, `visual`, `selection`, `gutter`, `line_number`, `border`, `directory`, `prompt`
- **Diagnostics**: `error`, `warning`, `info`, `hint`, `ok`
- **Changes**: `changes.add`, `changes.change`, and `changes.delete`, each with `fg`, `sign`, `fringe`, `line_bg`, and
  `text_bg`

To use a raw color in a callback, load the palette:

```lua
local palette = require("modus.palettes.vivendi")
```

## Plugin Support

- **[blink.cmp](https://github.com/Saghen/blink.cmp)**: Menu, matches, kinds, documentation, and signature help
- **[GitHub Copilot](https://github.com/github/copilot.vim)** and
  **[copilot.lua](https://github.com/zbirenbaum/copilot.lua)**: Inline suggestions and annotations
- **[fzf-lua](https://github.com/ibhagwan/fzf-lua)**: Results, prompts, and headers
- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)**: Signs, line backgrounds, inline changes, and blame
- **[nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)**: Folders, symlinks, and Git status

## Extras

The `extras` directory has configuration for other tools:

- `extras/fzf/<colorscheme>.sh`: `FZF_DEFAULT_OPTS` colors. You can also get the string with
  `require("modus").get_fzf_colors("vivendi")`.
- `extras/ghostty/<colorscheme>`: Ghostty themes.

## Testing

Run the headless checks with Neovim 0.9+:

```bash
nvim --headless -u NONE -l test/check_theme.lua
```

Open the `test/test.*` files to examine the syntax highlighting.

## Credits

The palettes and the semantic mappings come from [modus-themes](https://github.com/protesilaos/modus-themes) by
Protesilaos Stavrou.

## License

MIT License. See [LICENSE](LICENSE).
