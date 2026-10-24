vim.opt.runtimepath:prepend(vim.fn.getcwd())

local theme = require("modus")
local util = require("modus.util")

--- Check a resolved highlight color.
--- @param group string Highlight group
--- @param attribute string Color attribute
--- @param expected string Expected hex value or NONE
--- @return nil
local function assert_highlight(group, attribute, expected)
	local highlight = vim.api.nvim_get_hl(0, { name = group, link = false })
	local actual = highlight[attribute]
	local value = expected ~= "NONE" and tonumber(expected:sub(2), 16) or nil
	assert(actual == value, group .. "." .. attribute .. ": " .. vim.inspect(highlight))
end

--- Check that every semantic value is a palette color.
--- @param values table Semantic color table
--- @param palette_values table<string, boolean> Known palette values
--- @param path string Field path for error messages
--- @return nil
local function assert_palette_values(values, palette_values, path)
	for name, value in pairs(values) do
		local field = path .. "." .. name
		if type(value) == "table" then
			assert_palette_values(value, palette_values, field)
		else
			assert(palette_values[value], "Color outside the palette: " .. field .. " = " .. vim.inspect(value))
		end
	end
end

local variants = {
	operandi = { name = "modus-operandi", background = "light", bg = "#ffffff", fg = "#000000" },
	operandi_tinted = { name = "modus-operandi-tinted", background = "light", bg = "#fbf7f0", fg = "#000000" },
	vivendi = { name = "modus-vivendi", background = "dark", bg = "#000000", fg = "#ffffff" },
	vivendi_tinted = { name = "modus-vivendi-tinted", background = "dark", bg = "#0d0e1c", fg = "#ffffff" },
}

for variant, expected in pairs(variants) do
	local palette = require("modus.palettes." .. variant)
	local colors = require("modus.colors").get(variant)

	local palette_values = { NONE = true }
	for _, value in pairs(palette) do
		assert(value:match("^#%x%x%x%x%x%x$"), variant .. ": invalid palette value " .. value)
		palette_values[value] = true
	end
	assert_palette_values(colors, palette_values, variant)

	-- Transparent loads must not mutate the semantic colors.
	local transparent_colors = util.apply_overrides(colors, { transparent = true })
	assert(transparent_colors.bg == colors.none)
	assert(transparent_colors.gutter == colors.none)
	assert(colors.bg == expected.bg)

	for _, transparent in ipairs({ false, true }) do
		theme.setup({ transparent = transparent })
		vim.cmd.colorscheme(expected.name)
		assert(vim.g.colors_name == expected.name)
		assert(vim.o.background == expected.background)
		assert_highlight("Normal", "fg", expected.fg)
		assert_highlight("Normal", "bg", transparent and colors.none or expected.bg)
		assert_highlight("LineNr", "bg", transparent and colors.none or colors.gutter)
		assert_highlight("NormalFloat", "bg", colors.bg_popup)
		assert_highlight("FloatBorder", "bg", colors.bg_popup)
		assert_highlight("Comment", "fg", colors.comment)
		assert_highlight("@keyword", "fg", colors.keyword)
		assert_highlight("@string", "fg", colors.string)
		assert_highlight("DiffAdd", "bg", colors.changes.add.line_bg)
		assert_highlight("DiffText", "fg", "NONE")
		assert_highlight("GitSignsAdd", "fg", colors.changes.add.fringe)
		assert_highlight("GitSignsAdd", "bg", "NONE")
		assert_highlight("NvimTreeGitNew", "fg", colors.info)
		assert_highlight("NvimTreeGitDirty", "fg", colors.warning)
		assert_highlight("NvimTreeGitDeleted", "fg", colors.error)
		assert(vim.g.terminal_color_1 == colors.terminal.red)

		local fzf_colors = theme.get_fzf_colors(variant)
		assert(fzf_colors:find("bg:" .. (transparent and colors.none or colors.bg), 1, true))
	end
end

-- Every theme link must point to a defined group.
local groups = require("modus.highlights").setup(require("modus.colors").get("vivendi"), require("modus.config").get())
for group, opts in pairs(groups) do
	if opts.link then
		assert(next(vim.api.nvim_get_hl(0, { name = opts.link })) ~= nil, group .. " links to " .. opts.link)
	end
end

for index = 0, 15 do
	vim.g["terminal_color_" .. index] = nil
end
theme.setup({ terminal_colors = false })
theme.load("vivendi")
for index = 0, 15 do
	assert(vim.g["terminal_color_" .. index] == nil)
end

local vivendi = require("modus.colors").get("vivendi")

theme.setup({
	overrides = function(c)
		return { Function = { fg = c.keyword, bold = true } }
	end,
	on_highlights = function(highlights, c)
		highlights.GitSignsAdd = { fg = c.changes.change.sign }
	end,
})
theme.load("vivendi")
assert_highlight("Function", "fg", vivendi.keyword)
assert(vim.api.nvim_get_hl(0, { name = "Function", link = false }).bold)
assert_highlight("GitSignsAdd", "fg", vivendi.changes.change.sign)

theme.setup({ styles = { functions = { italic = true }, comments = { italic = true } } })
theme.load("vivendi")
for _, group in ipairs({ "Function", "@function", "@function.builtin", "Comment", "@comment" }) do
	assert(vim.api.nvim_get_hl(0, { name = group, link = false }).italic, "Style missing: " .. group)
end

print("Theme checks passed")
