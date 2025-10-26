return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.diagnostics.golangci_lint,
				null_ls.builtins.formatting.gofumpt,
				null_ls.builtins.formatting.mdformat,
				null_ls.builtins.formatting.prettier,
                                null_ls.builtins.diagnostics.typescript_language_server,
			},
		})
		vim.keymap.set("n", "<leader>df", vim.lsp.buf.format, {})
	end,
}
