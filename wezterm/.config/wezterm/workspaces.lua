local wezterm = require("wezterm")
local mux = wezterm.mux

local workspaces = {}

function workspaces.start_workspaces()
	wezterm.on("gui-startup", function(cmd)
		local args = {}
		if cmd then
			args = cmd.args
			print("Args: ", args)
			print("cmd: ", cmd)
			return
		end

		local home_dir = wezterm.home_dir
		-- local config_dir = home_dir .. "/.config"

		local workingDirectories = {
			{
				name = "Home",
				dir = home_dir,
				tabs = {
					tabOne = {
						"",
					},
				},
			},
		}

		for i = 1, #workingDirectories do
			local project = workingDirectories[i]

			local tab, pane, window = mux.spawn_window({
				workspace = project.name,
				cwd = project.dir,
			})

			for tabName, value in pairs(project.tabs) do
				if tabName == "tabOne" then
					for _, command in ipairs(value) do
						wezterm.log_info(project.name)
						wezterm.log_info(tabName)
						wezterm.log_info(command)

						pane:send_text(command)
					end
				end
				if tabName ~= "tabOne" then
					local newTab, newPane, newWindow = window:spawn_tab({})
					for _, command in ipairs(value) do
						wezterm.log_info(project.name)
						wezterm.log_info(tabName)
						wezterm.log_info(command)

						newPane:send_text(command)
					end
				end
			end

			pane:tab():activate(0)
		end

		mux.set_active_workspace("Home")
	end)
end

return workspaces
