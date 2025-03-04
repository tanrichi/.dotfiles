local wezterm = require("wezterm")
local core = {}

-- Cursor
core.default_cursor_style = "BlinkingBar"
core.cursor_blink_rate = 650

-- Tabs
core.hide_tab_bar_if_only_one_tab = false
core.tab_bar_at_bottom = true
core.use_fancy_tab_bar = false
core.tab_and_split_indices_are_zero_based = false

-- Performance
core.animation_fps = 240
core.max_fps = 240

return core
