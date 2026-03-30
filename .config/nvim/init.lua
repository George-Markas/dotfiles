-- Options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"
vim.opt.scrolloff = 10

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.incsearch = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.mouse = "a"
vim.opt.clipboard:append("unnamedplus")
vim.opt.termguicolors = true

-- Keybinds
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

vim.keymap.set("n", "<C-/>", "gcc", { remap = true })
vim.keymap.set("v", "<C-/>", "gc", { remap = true })

vim.keymap.set({ "n", "v" }, "<leader>d", '"_d')

vim.keymap.set({ "n", "v" }, "x", '"_x')

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "q:", "<nop>")

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end
})

-- Plugins
vim.pack.add({
  "https://github.com/vague-theme/vague.nvim",
  "https://github.com/windwp/nvim-autopairs",
  "https://github.com/nvim-treesitter/nvim-treesitter",
})

vim.cmd("colorscheme vague")

require("nvim-autopairs").setup {}

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "bash", 
    "c",
    "javascript",
    "json",
    "lua",
    "make",
    "markdown",
    "toml",
    "typescript",
    "yaml"
  },
  callback = function() vim.treesitter.start() end,
})
