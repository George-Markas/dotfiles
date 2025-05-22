local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Adjust line indentation
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Move lines up & down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Next / previous search result
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without replacing clipboard content
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("v", "p", '"_dp', opts)

-- Delete without copying
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("n", "x", '"_x"', opts)

-- Clear search highlights upon exiting search
vim.keymap.set("n", "<Esc>", ":nohl<CR>", { silent = true })

-- Unmap the annoying command mode
vim.keymap.set("n", "q:", "<nop>")
vim.keymap.set("n", "Q", "<nop>")

-- Hightlight yanking
vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})

-- Tabs
vim.keymap.set("n", "<C-n>", "<cmd>tabnew<CR>") 
vim.keymap.set("n", "<C-x>", "<cmd>tabclose<CR>") 
vim.keymap.set("n", "<C-Right>", "<cmd>tabn<CR>") 
vim.keymap.set("n", "<C-Left>", "<cmd>tabp<CR>")
