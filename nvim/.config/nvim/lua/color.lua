local vsc = require("vscode")
--
vsc.setup({})

vim.cmd("colorscheme vscode")

local function sync_system_theme()
	local obj = vim.system({ "gsettings", "get", "org.gnome.desktop.interface", "color-scheme" }):wait()

	if obj.code == 0 then
		local appearence = obj.stdout.gsub(obj.stdout, "['\n]", "")

		if appearence == "prefer-dark" then
			vim.cmd.colorscheme("rose-pine-main")
		else
			vim.cmd.colorscheme("rose-pine-dawn")
		end
	end
end

sync_system_theme()

return { sync_system_theme = sync_system_theme }
