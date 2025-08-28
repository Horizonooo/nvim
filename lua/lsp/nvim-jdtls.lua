return{
  "mfussenegger/nvim-jdtls",
  ft = {"java"},
  dependencies = {  'saghen/blink.cmp' },
  opts ={},
  config = function (_, opts)
    local jdtls = require('jdtls')
	local blink_cmp = require('blink.cmp')
    
    -- home = C:/Users/Username
    local w_home_path = vim.loop.os_homedir()
    local home_path = w_home_path:gsub("\\", "/")
    -- workspace_path
    local workspace_path = home_path .. '/.cache/jdtls-workspace/'
    -- project_name
    local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
    -- workspace_dir
    local workspace_dir = workspace_path .. project_name
    -- 创建文件夹
    os.execute('mkdir "' .. workspace_dir .. '"')
    
	-- nvim_data_path = C:/Users/Username/AppData/Local/nvim-data
    local w_nvim_data_path = vim.fn.stdpath('data')
    local nvim_data_path = w_nvim_data_path:gsub("\\", "/")
    
	local launcher_jar = vim.fn.glob(nvim_data_path .. '/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar')
    
    local config_os = "config_win"
    if vim.fn.has("mac") == 1 then
        config_os = "config_mac"
    elseif vim.fn.has("linux") == 1 then
        config_os = "config_linux"
    end
    local configuration_path = nvim_data_path .. '/mason/packages/jdtls/' .. config_os
	
	-- for completions
    local client_capabilities = vim.lsp.protocol.make_client_capabilities()
    local capabilities = blink_cmp.get_lsp_capabilities(client_capabilities)
    
    local config = {
      cmd = {
        'java',
        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.protocol=true',
        '-Dlog.level=ALL',
        '-Xmx1g',
        '--add-modules=ALL-SYSTEM',
        '--add-opens', 'java.base/java.util=ALL-UNNAMED',
        '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
        '-jar', launcher_jar,
        '-configuration', configuration_path,
        '-data', workspace_dir,
      },
      root_dir = vim.fs.root(0, {".git", "mvnw", "gradlew", "pom.xml", "build.gradle"}),
      settings = {
        java = {
        }
      },
	  capabilities = capabilities,
      init_options = {
        extendedClientCapabilities = jdtls.extendedClientCapabilities,
      },
    }
    jdtls.start_or_attach(config)
  end,
}
