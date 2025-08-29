require "config.init"

_G.Gao = {}

Gao.lsplist = {
    ["jdtls"] = {
        formatter = "google-java-format",
    },
	["lua-language-server"] = {
        formatter = "stylua",
	},
	["clangd"] = {
        formatter = "clang-format",
    },
}
