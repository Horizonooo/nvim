return {
	"mason-org/mason.nvim",
	cmd = "Mason",
	event = "VeryLazy",
	opts = {},
	config = function (_, opts)
		require("mason").setup(opts)
		local registry = require "mason-registry"
		
		local function install(package)
            local ok, p = pcall(registry.get_package, package)
			if ok and not p:is_installed() then
                p:install()
			end
        end
		
		for lsp, config in pairs(Gao.lsplist) do
			local formatter = config.formatter
			install(lsp)
            install(formatter)
		end
    end,
}
