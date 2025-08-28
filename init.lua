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

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
})

