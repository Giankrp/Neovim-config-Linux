local util = require("lspconfig.util")

return {
	cmd = { "vue-language-server", "--stdio" },
	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
	root_markers = { "package.json" },
	-- https://github.com/vuejs/language-tools/blob/v2/packages/language-server/lib/types.ts
	init_options = {
		vue = {
			hybrid_mode = false,
		},
		typescript = {
			tsdk = "~/.local/share/pnpm/global/5/node_modules/typescript/lib",
		},
	},
	before_init = function(_, config)
		if config.init_options and config.init_options.typescript and config.init_options.typescript.tsdk == "" then
			config.init_options.typescript.tsdk = util.get_typescript_server_path(config.root_dir)
		end
	end,
}
