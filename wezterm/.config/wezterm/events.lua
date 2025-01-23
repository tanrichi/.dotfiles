local wezterm = require("wezterm")

local events = {}

local function status_line()
	wezterm.on("update-right-status", function(window, pane)
		local picked_color_scheme = require("color_scheme")
		local color_scheme = wezterm.color.get_builtin_schemes()[picked_color_scheme]

		local active_color = color_scheme.tab_bar.active_tab.bg_color
		local inactive_color = color_scheme.tab_bar.inactive_tab.bg_color
		local inactive_hover_color = color_scheme.tab_bar.inactive_tab_hover.bg_color

		local SOLID_LEFT_ARROW = ""
		local ARROW_FOREGROUND = { Foreground = { Color = inactive_color } }
		local prefix = ""

		window:set_right_status(window:active_workspace())

		if window:leader_is_active() then
			prefix = " " .. utf8.char(0x1f30a) -- ocean wave
			SOLID_LEFT_ARROW = utf8.char(0xe0b2)
		end

		if window:active_tab():tab_id() ~= 1 then
			ARROW_FOREGROUND = { Foreground = { Color = active_color } }
		end -- arrow color based on if tab is first pane

		window:set_left_status(wezterm.format({
			{ Background = { Color = inactive_hover_color } },
			{ Text = prefix },
			ARROW_FOREGROUND,
			{ Text = SOLID_LEFT_ARROW },
		}))
	end)
end

function events.setup()
	status_line()
end

return events
