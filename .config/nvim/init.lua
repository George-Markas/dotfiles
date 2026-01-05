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

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

vim.keymap.set("n", "x", '"_x')

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "q:", "<nop>")

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end
})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    {
      "vague-theme/vague.nvim",
      lazy = false,
      priority = 1000,
      config = function()
        vim.cmd("colorscheme vague")
      end
    },
    {
      "numToStr/Comment.nvim",
      opts = {
        toggler = {
          line = "<C-/>"
        },

        opleader = {
          line = "<C-/>"
        },
      }
    },
    {
      "windwp/nvim-autopairs",
      event = "InsertEnter",
      opts = {}
    },
    {
      "nvim-treesitter/nvim-treesitter",
      lazy = false,
      branch = "main",
      build = ":TSUpdate",
      config = function()
        vim.api.nvim_create_autocmd("FileType", {
          pattern = {
            "bash",
            "c",
            "diff",
            "gitcommit",
            "gitignore",
            "json",
            "jsonc",
            "lua",
            "make",
            "markdown",
            "markdown_inline"
          },
          callback = function()
            vim.treesitter.start()
          end,
        })
      end
    },
  },
  install = { colorscheme = { "vague" } },
  checker = { enabled = true },
})
