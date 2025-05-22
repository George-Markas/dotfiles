local opt = vim.opt

opt.nu = true
opt.relativenumber = true
opt.termguicolors = true
opt.signcolumn = "yes"

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

opt.incsearch = true
opt.inccommand = "split"
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

opt.errorbells = false
opt.backspace = { "start", "indent", "eol" }
opt.splitright = true
opt.splitbelow = true
opt.updatetime = 50
opt.colorcolumn = "80"
opt.scrolloff = 10
opt.mouse:append("a")
opt.clipboard:append("unnamedplus")
