--- @meta

--- User options for `setup()`
--- @class modus.Opts
--- @field transparent? boolean Use transparent background
--- @field terminal_colors? boolean Set terminal ANSI colors
--- @field styles? modus.Styles Style customization
--- @field overrides? fun(colors: modus.Colors): modus.Highlights Returns highlight overrides
--- @field on_highlights? fun(highlights: modus.Highlights, colors: modus.Colors) Modifies highlights in place

--- @alias modus.Variant "operandi" | "operandi_tinted" | "vivendi" | "vivendi_tinted"

--- Raw Modus colors and semantic mappings, keyed by their modus-themes.el names in snake_case
--- @alias modus.Palette table<string, string>

--- @alias modus.Highlights table<string, vim.api.keyset.highlight>
--- @alias modus.StyleType "comments" | "keywords" | "functions" | "variables"
--- @alias modus.Styles table<modus.StyleType, vim.api.keyset.highlight>
--- @alias modus.StyleFn fun(hl: vim.api.keyset.highlight): vim.api.keyset.highlight
--- @alias modus.StyleFns table<modus.StyleType, modus.StyleFn>
