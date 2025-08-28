local opt = vim.opt

-- 显示行号 --
opt.number = true

-- 显示相对行号 --
opt.relativenumber = true

-- 高亮当前行 --
opt.cursorline = true

-- 高亮第80列，一般用来表示一行代码推荐的最长长度 --
opt.colorcolumn = "80"

-- 将Tab键转为空格 --
opt.expandtab = true

-- 设置1个制表符为4个空格 --
opt.tabstop = 4

-- 将smarttab设置为和tabstop相同的值 --
opt.shiftwidth = 0

-- 外部修改当前文件后，会自动加载它 --
opt.autoread = true

-- 向下分屏 --
opt.splitbelow = true

-- 向右分屏 --
opt.splitright = true

-- 如果查找的内容中不存在大写，则大小写不敏感
opt.ignorecase = true
opt.smartcase = true

-- 不要在查找之后继续高亮匹配结果
opt.hlsearch = false

-- 开启 24 位真彩色
opt.termguicolors = true

-- 禁用鼠标
opt.mouse = ""