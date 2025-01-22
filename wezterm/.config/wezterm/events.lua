local wezterm = require("wezterm")

local events = {}

local function status_line()
	wezterm.on("update-right-status", function(window, pane)
		local SOLID_LEFT_ARROW = ""
		local ARROW_FOREGROUND = { Foreground = { Color = "#c6a0f6" } }
		local prefix = ""

		window:set_right_status(window:active_workspace())

		if window:leader_is_active() then
			prefix = " " .. utf8.char(0x1f30a) -- ocean wave
			SOLID_LEFT_ARROW = utf8.char(0xe0b2)
		end

		if window:active_tab():tab_id() ~= 1 then
			ARROW_FOREGROUND = { Foreground = { Color = "#1e2030" } }

			-- catpuccin
			-- ARROW_FOREGROUND = { Foreground = { Color = "#c6a0f6" } }
		end -- arrow color based on if tab is first pane

		window:set_left_status(wezterm.format({
			{ Background = { Color = "#b7bdf8" } },
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
