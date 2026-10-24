--- @type modus.Palette
local M = {}

-- Values from `modus-themes-vivendi-tinted-palette` in modus-themes.el.

-- Basic values
M.bg_main = "#0d0e1c"
M.bg_dim = "#1d2235"
M.fg_main = "#ffffff"
M.fg_dim = "#989898"
M.fg_alt = "#c6daff"
M.bg_active = "#4a4f69"
M.bg_inactive = "#2b3045"
M.border = "#61647a"

-- Common accent foregrounds
M.red = "#ff5f59"
M.red_warmer = "#ff6b55"
M.red_cooler = "#ff7f86"
M.red_faint = "#ef8386"
M.red_intense = "#ff5f5f"
M.green = "#44bc44"
M.green_warmer = "#75c13e"
M.green_cooler = "#11c777"
M.green_faint = "#88ca9f"
M.green_intense = "#44df44"
M.yellow = "#d0bc00"
M.yellow_warmer = "#fec43f"
M.yellow_cooler = "#dfaf7a"
M.yellow_faint = "#d2b580"
M.yellow_intense = "#efef00"
M.blue = "#2fafff"
M.blue_warmer = "#79a8ff"
M.blue_cooler = "#00bcff"
M.blue_faint = "#82b0ec"
M.blue_intense = "#338fff"
M.magenta = "#feacd0"
M.magenta_warmer = "#f78fe7"
M.magenta_cooler = "#b6a0ff"
M.magenta_faint = "#caa6df"
M.magenta_intense = "#ff66ff"
M.cyan = "#00d3d0"
M.cyan_warmer = "#4ae2f0"
M.cyan_cooler = "#6ae4b9"
M.cyan_faint = "#9ac8e0"
M.cyan_intense = "#00eff0"

-- Uncommon accent foregrounds
M.rust = "#db8b3f"
M.gold = "#c0965b"
M.olive = "#9cbd6f"
M.slate = "#76afbf"
M.indigo = "#9099d9"
M.maroon = "#cf7fa7"
M.pink = "#d09dc0"

-- Common accent backgrounds
M.bg_red_intense = "#9d1f1f"
M.bg_green_intense = "#2f822f"
M.bg_yellow_intense = "#7a6100"
M.bg_blue_intense = "#1640b0"
M.bg_magenta_intense = "#7030af"
M.bg_cyan_intense = "#2266ae"
M.bg_red_subtle = "#620f2a"
M.bg_green_subtle = "#00422a"
M.bg_yellow_subtle = "#4a4000"
M.bg_blue_subtle = "#242679"
M.bg_magenta_subtle = "#552f5f"
M.bg_cyan_subtle = "#004065"
M.bg_red_nuanced = "#3a0c14"
M.bg_green_nuanced = "#092f1f"
M.bg_yellow_nuanced = "#381d0f"
M.bg_blue_nuanced = "#12154a"
M.bg_magenta_nuanced = "#2f0c3f"
M.bg_cyan_nuanced = "#042837"

-- Uncommon accent background and foreground pairs
M.bg_clay = "#49191a"
M.fg_clay = "#f1b090"
M.bg_ochre = "#462f20"
M.fg_ochre = "#e0d09c"
M.bg_lavender = "#38325c"
M.fg_lavender = "#dfc0f0"
M.bg_sage = "#143e32"
M.fg_sage = "#83d7ac"

-- Graphs
M.bg_graph_red_0 = "#b52c2c"
M.bg_graph_red_1 = "#702020"
M.bg_graph_green_0 = "#0fed00"
M.bg_graph_green_1 = "#007800"
M.bg_graph_yellow_0 = "#f1e00a"
M.bg_graph_yellow_1 = "#b08940"
M.bg_graph_blue_0 = "#2fafef"
M.bg_graph_blue_1 = "#1f2f8f"
M.bg_graph_magenta_0 = "#bf94fe"
M.bg_graph_magenta_1 = "#5f509f"
M.bg_graph_cyan_0 = "#47dfea"
M.bg_graph_cyan_1 = "#00808f"

-- Special purpose
M.bg_completion = "#483d8a"
M.bg_popup = "#14162c"
M.bg_hover = "#45605e"
M.bg_hover_secondary = "#64404f"
M.bg_hl_line = "#303a6f"
M.bg_region = "#555a66"
M.bg_mode_line_active = "#484d67"
M.border_mode_line_active = "#979797"
M.bg_mode_line_inactive = "#292d48"
M.fg_mode_line_inactive = "#969696"
M.border_mode_line_inactive = "#606270"
M.modeline_err = "#ffa9bf"
M.modeline_warning = "#dfcf43"
M.modeline_info = "#9fefff"
M.bg_tab_bar = "#2c3045"
M.bg_tab_current = "#0d0e1c"
M.bg_tab_other = "#4a4f6a"

-- Diffs
M.bg_added = "#003a2f"
M.bg_added_faint = "#002922"
M.bg_added_refine = "#035542"
M.bg_added_fringe = "#23884f"
M.fg_added = "#a0e0a0"
M.fg_added_intense = "#80e080"
M.bg_changed = "#363300"
M.bg_changed_faint = "#2a1f00"
M.bg_changed_refine = "#4a4a00"
M.bg_changed_fringe = "#8f7a30"
M.fg_changed = "#efef80"
M.fg_changed_intense = "#c0b05f"
M.bg_removed = "#4f1127"
M.bg_removed_faint = "#380a19"
M.bg_removed_refine = "#781a3a"
M.bg_removed_fringe = "#b81a26"
M.fg_removed = "#ffbfbf"
M.fg_removed_intense = "#ff9095"
M.bg_diff_context = "#1a1f30"

-- Paren match
M.bg_paren_match = "#4f7f9f"
M.bg_paren_expression = "#453040"

-- General mappings
M.cursor = M.magenta_intense
M.keybind = M.magenta_cooler
M.name = M.magenta
M.identifier = M.yellow_faint
M.err = M.red
M.warning = M.yellow
M.info = M.green_cooler
M.underline_err = M.red_intense
M.underline_warning = M.yellow
M.underline_note = M.cyan
M.bg_prominent_err = M.bg_red_intense
M.fg_prominent_err = M.fg_main
M.bg_prominent_warning = M.bg_yellow_intense
M.fg_prominent_warning = M.fg_main
M.bg_prominent_note = M.bg_cyan_intense
M.fg_prominent_note = M.fg_main
M.bg_active_argument = M.bg_yellow_nuanced
M.fg_active_argument = M.yellow_cooler
M.bg_active_value = M.bg_cyan_nuanced
M.fg_active_value = M.cyan_cooler

-- Code mappings
M.builtin = M.magenta
M.comment = M.red_faint
M.constant = M.magenta_cooler
M.docstring = M.cyan_faint
M.fnname = M.magenta_warmer
M.fnname_call = M.pink
M.keyword = M.blue_warmer
M.preprocessor = M.red_cooler
M.property = M.cyan_warmer
M.rx_backslash = M.magenta_warmer
M.rx_construct = M.magenta_cooler
M.string = M.blue
M.type = M.green_cooler
M.variable = M.cyan_warmer
M.variable_use = M.slate

-- Accent mappings
M.accent_0 = M.magenta_cooler
M.accent_1 = M.cyan
M.accent_2 = M.magenta_warmer
M.accent_3 = M.yellow_warmer

-- Completion mappings
M.fg_completion_match_0 = M.blue_cooler
M.fg_completion_match_1 = M.magenta_warmer
M.fg_completion_match_2 = M.cyan_cooler
M.fg_completion_match_3 = M.yellow

-- Date mappings
M.date_common = M.cyan
M.date_deadline = M.red_cooler
M.date_deadline_subtle = M.red_faint
M.date_event = M.fg_alt
M.date_holiday = M.magenta_warmer
M.date_holiday_other = M.blue
M.date_range = M.fg_alt
M.date_scheduled = M.yellow_cooler
M.date_scheduled_subtle = M.yellow_faint
M.date_weekday = M.cyan
M.date_weekend = M.magenta

-- Link mappings
M.fg_link = M.blue_warmer
M.underline_link = M.blue_warmer
M.fg_link_symbolic = M.cyan
M.underline_link_symbolic = M.cyan
M.fg_link_visited = M.magenta
M.underline_link_visited = M.magenta

-- Mail mappings
M.mail_cite_0 = M.blue_faint
M.mail_cite_1 = M.yellow_cooler
M.mail_cite_2 = M.cyan_cooler
M.mail_cite_3 = M.red_cooler
M.mail_part = M.blue
M.mail_recipient = M.blue_warmer
M.mail_subject = M.magenta_warmer
M.mail_other = M.magenta

-- Mark mappings
M.bg_mark_delete = M.bg_red_subtle
M.fg_mark_delete = M.red_cooler
M.bg_mark_select = M.bg_cyan_subtle
M.fg_mark_select = M.cyan
M.bg_mark_other = M.bg_yellow_subtle
M.fg_mark_other = M.yellow

-- Prompt mappings
M.fg_prompt = M.cyan_warmer

-- Prose mappings
M.fg_prose_code = M.cyan_cooler
M.fg_prose_macro = M.magenta_cooler
M.fg_prose_verbatim = M.magenta_warmer
M.prose_done = M.green
M.prose_todo = M.red
M.prose_metadata = M.fg_dim
M.prose_metadata_value = M.fg_alt
M.prose_table = M.fg_alt
M.prose_table_formula = M.magenta_warmer
M.prose_tag = M.magenta_faint

-- Rainbow mappings
M.rainbow_0 = M.fg_main
M.rainbow_1 = M.magenta_intense
M.rainbow_2 = M.cyan_intense
M.rainbow_3 = M.red_warmer
M.rainbow_4 = M.yellow_intense
M.rainbow_5 = M.magenta_cooler
M.rainbow_6 = M.green_intense
M.rainbow_7 = M.blue_warmer
M.rainbow_8 = M.magenta_warmer

-- Search mappings
M.bg_search_current = M.bg_yellow_intense
M.bg_search_lazy = M.bg_cyan_intense
M.bg_search_static = M.bg_magenta_subtle
M.bg_search_replace = M.bg_red_intense
M.bg_search_rx_group_0 = M.bg_blue_intense
M.bg_search_rx_group_1 = M.bg_green_intense
M.bg_search_rx_group_2 = M.bg_red_subtle
M.bg_search_rx_group_3 = M.bg_magenta_subtle

-- Heading mappings
M.fg_heading_0 = M.cyan_cooler
M.fg_heading_1 = M.fg_main
M.fg_heading_2 = M.yellow_faint
M.fg_heading_3 = M.blue_faint
M.fg_heading_4 = M.magenta
M.fg_heading_5 = M.green_faint
M.fg_heading_6 = M.red_faint
M.fg_heading_7 = M.cyan_faint
M.fg_heading_8 = M.fg_dim

-- Common mappings
M.fringe = M.bg_dim
M.fg_region = M.fg_main
M.fg_mode_line_active = M.fg_main

-- Button mappings
M.fg_button_active = M.fg_main
M.fg_button_inactive = M.fg_dim
M.bg_button_active = M.bg_active
M.bg_button_inactive = M.bg_dim

-- Code mappings
M.bracket = M.fg_main
M.delimiter = M.fg_main
M.docmarkup = M.magenta_faint
M.number = M.fg_main
M.operator = M.fg_main
M.punctuation = M.fg_main

-- Date mappings
M.date_now = M.fg_main

-- Line number mappings
M.fg_line_number_inactive = M.fg_dim
M.fg_line_number_active = M.fg_main
M.bg_line_number_inactive = M.bg_dim
M.bg_line_number_active = M.bg_active

-- Paren match
M.fg_paren_match = M.fg_main

-- Prose mappings
M.bg_prose_block_delimiter = M.bg_dim
M.fg_prose_block_delimiter = M.fg_dim
M.bg_prose_block_contents = M.bg_dim

-- Search mappings
M.fg_search_current = M.fg_main
M.fg_search_lazy = M.fg_main
M.fg_search_static = M.fg_main
M.fg_search_replace = M.fg_main
M.fg_search_rx_group_0 = M.fg_main
M.fg_search_rx_group_1 = M.fg_main
M.fg_search_rx_group_2 = M.fg_main
M.fg_search_rx_group_3 = M.fg_main

-- Space mappings
M.fg_space = M.border
M.bg_space_err = M.bg_red_intense

-- Terminal mappings
M.bg_term_black = "#000000"
M.fg_term_black = "#000000"
M.bg_term_black_bright = "#595959"
M.fg_term_black_bright = "#595959"
M.bg_term_red = M.red
M.fg_term_red = M.red
M.bg_term_red_bright = M.red_warmer
M.fg_term_red_bright = M.red_warmer
M.bg_term_green = M.green
M.fg_term_green = M.green
M.bg_term_green_bright = M.green_cooler
M.fg_term_green_bright = M.green_cooler
M.bg_term_yellow = M.yellow
M.fg_term_yellow = M.yellow
M.bg_term_yellow_bright = M.yellow_warmer
M.fg_term_yellow_bright = M.yellow_warmer
M.bg_term_blue = M.blue
M.fg_term_blue = M.blue
M.bg_term_blue_bright = M.blue_warmer
M.fg_term_blue_bright = M.blue_warmer
M.bg_term_magenta = M.magenta
M.fg_term_magenta = M.magenta
M.bg_term_magenta_bright = M.magenta_cooler
M.fg_term_magenta_bright = M.magenta_cooler
M.bg_term_cyan = M.cyan
M.fg_term_cyan = M.cyan
M.bg_term_cyan_bright = M.cyan_cooler
M.fg_term_cyan_bright = M.cyan_cooler
M.bg_term_white = "#a6a6a6"
M.fg_term_white = "#a6a6a6"
M.bg_term_white_bright = "#ffffff"
M.fg_term_white_bright = "#ffffff"

return M
