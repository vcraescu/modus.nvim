local M = {}

--- Load the colorscheme
--- @param variant modus.Variant
--- @return nil
function M.load(variant)
	-- Reset highlights
	vim.cmd("highlight clear")

	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	-- Set colorscheme name and options
	vim.g.colors_name = "modus-" .. variant:gsub("_", "-")
	vim.o.background = variant:match("^operandi") and "light" or "dark"
	vim.o.termguicolors = true

	local config = require("modus.config")
	local util = require("modus.util")
	local highlights = require("modus.highlights")

	-- Get configuration
	config = config.get()
	local colors = util.apply_overrides(require("modus.colors").get(variant), config)

	-- Get all highlights
	local highlight_groups = highlights.setup(colors, config)

	-- Apply all highlights
	util.load_highlights(highlight_groups)

	-- Set terminal colors if enabled
	if config.terminal_colors then
		vim.g.terminal_color_0 = colors.terminal.black
		vim.g.terminal_color_1 = colors.terminal.red
		vim.g.terminal_color_2 = colors.terminal.green
		vim.g.terminal_color_3 = colors.terminal.yellow
		vim.g.terminal_color_4 = colors.terminal.blue
		vim.g.terminal_color_5 = colors.terminal.magenta
		vim.g.terminal_color_6 = colors.terminal.cyan
		vim.g.terminal_color_7 = colors.terminal.white

		vim.g.terminal_color_8 = colors.terminal.bright_black
		vim.g.terminal_color_9 = colors.terminal.bright_red
		vim.g.terminal_color_10 = colors.terminal.bright_green
		vim.g.terminal_color_11 = colors.terminal.bright_yellow
		vim.g.terminal_color_12 = colors.terminal.bright_blue
		vim.g.terminal_color_13 = colors.terminal.bright_magenta
		vim.g.terminal_color_14 = colors.terminal.bright_cyan
		vim.g.terminal_color_15 = colors.terminal.bright_white
	end
end

--- Setup the colorscheme with custom configuration
---@param opts? modus.Opts User configuration
---@return nil
function M.setup(opts)
	opts = opts or {}
	local config = require("modus.config")

	config.setup(opts)
end

--- Get fzf color string for use with fzf-lua or fzf
--- @param variant modus.Variant
--- @return string FZF color configuration string
function M.get_fzf_colors(variant)
	local colors = require("modus.colors").get(variant)
	local config = require("modus.config").get()
	local bg = config.transparent and colors.none or colors.bg

	return table.concat({
		"fg:" .. colors.fg,
		"bg:" .. bg,
		"hl:" .. colors.match,
		"fg+:" .. colors.fg,
		"bg+:" .. colors.selection,
		"hl+:" .. colors.match,
		"info:" .. colors.fg_dim,
		"prompt:" .. colors.prompt,
		"pointer:" .. colors.keyword,
		"marker:" .. colors.changes.add.sign,
		"spinner:" .. colors.info,
		"header:" .. colors.type,
		"border:" .. colors.border,
		"label:" .. colors.fg,
		"query:" .. colors.fg,
		"gutter:" .. bg,
		"selected-bg:" .. colors.bg_inactive,
	}, ",")
end

return M
