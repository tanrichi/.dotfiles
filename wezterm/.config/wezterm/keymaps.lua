local wezterm = require("wezterm")

local theme_switcher = require("theme_switcher")

local keymaps = {}
local act = wezterm.action
keymaps.leader = { key = "Home", mods = "", timeout_milliseconds = 1000 }
keymaps.keys = {
	{
		mods = "CTRL",
		key = "w",
		action = act.CloseCurrentPane({ confirm = true }),
	},
	{
		mods = "CTRL|SHIFT",
		key = "w",
		action = act.CloseCurrentPane({ confirm = false }),
	},
	-- {
	-- 	mods = "CTRL",
	-- 	key = "q",
	-- 	action = act.CloseCurrentPane({ confirm = true }),
	-- },
	{
		mods = "CTRL|SHIFT",
		key = "q",
		action = act.CloseCurrentPane({ confirm = false }),
	},
	{
		mods = "CTRL",
		key = "t",
		action = act({ SpawnTab = "CurrentPaneDomain" }),
	},
	{
		key = "d",
		mods = "LEADER",
		action = act.SendKey({ key = "g", mods = "CTRL" }),
	},
	{
		key = "f",
		mods = "LEADER",
		action = act.SendString("y\n"),
	},
	{
		key = "1",
		mods = "CTRL",
		action = act.SwitchToWorkspace({
			name = "Home",
		}),
	},
	{
		key = "Space",
		mods = "LEADER",
		action = act.SendKey({ key = "g", mods = "CTRL" }),
	},
	{
		key = "3",
		mods = "CTRL",
		action = wezterm.action_callback(function(window, pane)
			theme_switcher.theme_switcher(window, pane)
		end),
	},

	{
		mods = "CTRL",
		key = "l",
		action = wezterm.action_callback(function(win, pane)
			wezterm.run_child_process({ "ls", "-l" })
		end),
	},
}

for i = 1, 9 do
	table.insert(keymaps.keys, {
		key = tostring(i),
		mods = "CTRL",
		action = act.ActivateTab(i - 1),
	})
end

return keymaps
