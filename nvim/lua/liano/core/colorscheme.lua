local status, _ = pcall(vim.cmd, "colorscheme nightfly")

vim.cmd("highlight Normal guibg=none")

if not status then
	print("Colorscheme not found")
	return
end
