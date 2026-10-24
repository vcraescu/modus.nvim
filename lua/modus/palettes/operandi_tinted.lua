--- @type theme.Palette
local M = {}

-- Values from `modus-themes-operandi-tinted-palette` in modus-themes.el.

-- Basic values
M.bg_main = "#fbf7f0"
M.bg_dim = "#efe9dd"
M.fg_main = "#000000"
M.fg_dim = "#595959"
M.fg_alt = "#193668"
M.bg_active = "#c9b9b0"
M.bg_inactive = "#dfd5cf"
M.border = "#9f9690"

-- Common accent foregrounds
M.red = "#a60000"
M.red_warmer = "#972500"
M.red_cooler = "#a0132f"
M.red_faint = "#7f0000"
M.red_intense = "#d00000"
M.green = "#006300"
M.green_warmer = "#306010"
M.green_cooler = "#00603f"
M.green_faint = "#2a5045"
M.green_intense = "#008900"
M.yellow = "#6d5000"
M.yellow_warmer = "#894000"
M.yellow_cooler = "#602938"
M.yellow_faint = "#574316"
M.yellow_intense = "#808000"
M.blue = "#0031a9"
M.blue_warmer = "#3546c2"
M.blue_cooler = "#0000b0"
M.blue_faint = "#003497"
M.blue_intense = "#0000ff"
M.magenta = "#721045"
M.magenta_warmer = "#8f0075"
M.magenta_cooler = "#531ab6"
M.magenta_faint = "#7c318f"
M.magenta_intense = "#dd22dd"
M.cyan = "#00598b"
M.cyan_warmer = "#32548f"
M.cyan_cooler = "#005f5f"
M.cyan_faint = "#304463"
M.cyan_intense = "#008899"

-- Uncommon accent foregrounds
M.rust = "#8a290f"
M.gold = "#6c501c"
M.olive = "#425d00"
M.slate = "#2f3f83"
M.indigo = "#4a3a8a"
M.maroon = "#731c52"
M.pink = "#7b435c"

-- Common accent backgrounds
M.bg_red_intense = "#ff8f88"
M.bg_green_intense = "#8adf80"
M.bg_yellow_intense = "#f3d000"
M.bg_blue_intense = "#bfc9ff"
M.bg_magenta_intense = "#dfa0f0"
M.bg_cyan_intense = "#a4d5f9"
M.bg_red_subtle = "#ffcfbf"
M.bg_green_subtle = "#b3fabf"
M.bg_yellow_subtle = "#fff576"
M.bg_blue_subtle = "#ccdfff"
M.bg_magenta_subtle = "#ffddff"
M.bg_cyan_subtle = "#bfefff"
M.bg_red_nuanced = "#ffe8e8"
M.bg_green_nuanced = "#e0f6e0"
M.bg_yellow_nuanced = "#f8f0d0"
M.bg_blue_nuanced = "#ecedff"
M.bg_magenta_nuanced = "#f8e6f5"
M.bg_cyan_nuanced = "#e0f2fa"

-- Uncommon accent background and foreground pairs
M.bg_clay = "#f1c8b5"
M.fg_clay = "#63192a"
M.bg_ochre = "#f0e3c0"
M.fg_ochre = "#573a30"
M.bg_lavender = "#dfcdfa"
M.fg_lavender = "#443379"
M.bg_sage = "#c0e7d4"
M.fg_sage = "#124b41"

-- Graphs
M.bg_graph_red_0 = "#ef7969"
M.bg_graph_red_1 = "#ffaab4"
M.bg_graph_green_0 = "#45c050"
M.bg_graph_green_1 = "#75ef30"
M.bg_graph_yellow_0 = "#ffcf00"
M.bg_graph_yellow_1 = "#f9ff00"
M.bg_graph_blue_0 = "#7f90ff"
M.bg_graph_blue_1 = "#a6c0ff"
M.bg_graph_magenta_0 = "#e07fff"
M.bg_graph_magenta_1 = "#fad0ff"
M.bg_graph_cyan_0 = "#70d3f0"
M.bg_graph_cyan_1 = "#afefff"

-- Special purpose
M.bg_completion = "#f0c1cf"
M.bg_popup = "#f6eddd"
M.bg_hover = "#b2e4dc"
M.bg_hover_secondary = "#dfe09f"
M.bg_hl_line = "#f1d5d0"
M.bg_region = "#c2bcb5"
M.bg_mode_line_active = "#cab9b2"
M.border_mode_line_active = "#545454"
M.bg_mode_line_inactive = "#dfd9cf"
M.fg_mode_line_inactive = "#585858"
M.border_mode_line_inactive = "#a59a94"
M.modeline_err = "#7f0000"
M.modeline_warning = "#5f0070"
M.modeline_info = "#002580"
M.bg_tab_bar = "#e0d4ce"
M.bg_tab_current = "#fbf7f0"
M.bg_tab_other = "#c8b8b2"

-- Diffs
M.bg_added = "#c3ebc1"
M.bg_added_faint = "#dcf8d1"
M.bg_added_refine = "#acd6a5"
M.bg_added_fringe = "#6cc06c"
M.fg_added = "#005000"
M.fg_added_intense = "#006700"
M.bg_changed = "#ffdfa9"
M.bg_changed_faint = "#ffefbf"
M.bg_changed_refine = "#fac090"
M.bg_changed_fringe = "#c0b200"
M.fg_changed = "#553d00"
M.fg_changed_intense = "#655000"
M.bg_removed = "#f4d0cf"
M.bg_removed_faint = "#ffe9e5"
M.bg_removed_refine = "#f3b5a7"
M.bg_removed_fringe = "#d84a4f"
M.fg_removed = "#8f1313"
M.fg_removed_intense = "#aa2222"
M.bg_diff_context = "#efe9df"

-- Paren match
M.bg_paren_match = "#7fdfcf"
M.bg_paren_expression = "#efd3f5"

-- General mappings
M.cursor = M.red_intense
M.keybind = M.red
M.name = M.magenta
M.identifier = M.yellow_faint
M.err = M.red
M.warning = M.yellow
M.info = M.green
M.underline_err = M.red_intense
M.underline_warning = M.yellow_intense
M.underline_note = M.cyan_intense
M.bg_prominent_err = M.bg_red_intense
M.fg_prominent_err = M.fg_main
M.bg_prominent_warning = M.bg_yellow_intense
M.fg_prominent_warning = M.fg_main
M.bg_prominent_note = M.bg_cyan_intense
M.fg_prominent_note = M.fg_main
M.bg_active_argument = M.bg_yellow_nuanced
M.fg_active_argument = M.yellow_warmer
M.bg_active_value = M.bg_cyan_nuanced
M.fg_active_value = M.cyan_warmer

-- Code mappings
M.builtin = M.magenta
M.comment = M.red_faint
M.constant = M.magenta_cooler
M.docstring = M.cyan_faint
M.fnname = M.yellow_cooler
M.fnname_call = M.pink
M.keyword = M.blue
M.preprocessor = M.yellow_warmer
M.property = M.green_cooler
M.rx_backslash = M.magenta_warmer
M.rx_construct = M.magenta_cooler
M.string = M.cyan
M.type = M.green_warmer
M.variable = M.green_cooler
M.variable_use = M.green_faint

-- Accent mappings
M.accent_0 = M.red_cooler
M.accent_1 = M.cyan
M.accent_2 = M.magenta_cooler
M.accent_3 = M.yellow_warmer

-- Completion mappings
M.fg_completion_match_0 = M.blue
M.fg_completion_match_1 = M.magenta_warmer
M.fg_completion_match_2 = M.cyan
M.fg_completion_match_3 = M.red

-- Date mappings
M.date_common = M.cyan
M.date_deadline = M.red_cooler
M.date_deadline_subtle = M.red_faint
M.date_event = M.fg_alt
M.date_holiday = M.red
M.date_holiday_other = M.blue
M.date_range = M.fg_alt
M.date_scheduled = M.yellow
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
M.mail_cite_0 = M.cyan
M.mail_cite_1 = M.yellow
M.mail_cite_2 = M.green_warmer
M.mail_cite_3 = M.red_cooler
M.mail_part = M.green_cooler
M.mail_recipient = M.blue_warmer
M.mail_subject = M.magenta_warmer
M.mail_other = M.magenta

-- Mark mappings
M.bg_mark_delete = M.bg_red_subtle
M.fg_mark_delete = M.red
M.bg_mark_select = M.bg_cyan_subtle
M.fg_mark_select = M.cyan
M.bg_mark_other = M.bg_yellow_subtle
M.fg_mark_other = M.yellow

-- Prompt mappings
M.fg_prompt = M.green_cooler

-- Prose mappings
M.fg_prose_code = M.green_cooler
M.fg_prose_macro = M.blue_cooler
M.fg_prose_verbatim = M.yellow_warmer
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
M.fg_heading_0 = M.green_cooler
M.fg_heading_1 = M.fg_main
M.fg_heading_2 = M.yellow_faint
M.fg_heading_3 = M.fg_alt
M.fg_heading_4 = M.magenta
M.fg_heading_5 = M.green_faint
M.fg_heading_6 = M.red_faint
M.fg_heading_7 = M.cyan_warmer
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
