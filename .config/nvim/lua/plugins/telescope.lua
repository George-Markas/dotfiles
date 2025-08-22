return {
  "nvim-telescope/telescope.nvim", branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope-fzf-native.nvim"
  },

  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    telescope.setup({
      defaults = {
        file_ignore_patterns = {
          ".git",
          ".DS_Store",
          "%.png",
          "%.jpg",
          "%.webp",
          "%.pdf"
        }
      },

      pickers = {
        find_files = { hidden = true }
      }
    })

    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
  end
}
