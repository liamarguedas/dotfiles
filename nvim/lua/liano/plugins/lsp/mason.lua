local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end

local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	return
end

mason.setup()

mason_lspconfig.setup({
	ensure_installed = {
		-- web dev
		"html",
		"cssls",
		"quick_lint_js",
		"emmet_ls",

		-- lua
		"lua_ls",

		-- python
		"pyright",
		-- "basedpyright",
		-- "pylsp",
		-- "ruff_lsp",

		-- rust
		"rust_analyzer",
	},
})

mason_null_ls.setup({
	ensure_installed = {
		"prettier",
		"stylua",
		"pylint",
		"eslint_d",
	},
})
