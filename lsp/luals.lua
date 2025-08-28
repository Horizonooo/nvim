local w_nvim_data_path = vim.fn.stdpath('data')
local nvim_data_path = w_nvim_data_path:gsub("\\", "/")
local lua_ls_path = vim.fn.glob(nvim_data_path .. "/mason/packages/lua-language-server/bin/lua-language-server.exe")

return {
  cmd = {lua_ls_path},
  filetypes = { 'lua' },
  root_markers = {
    '.luarc.json',
    '.luarc.jsonc',
    '.luacheckrc',
    '.stylua.toml',
    'stylua.toml',
    'selene.toml',
    'selene.yml',
    '.git',
  },
  settings = {
    Lua = {
        diagnostics = {
            globals = { 'vim' },
        },
    },
  }
}
