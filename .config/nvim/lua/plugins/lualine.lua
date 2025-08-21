return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local _tokyonight = require("lualine.themes.tokyonight")
    
    _tokyonight.normal.a.gui = "bold"
    _tokyonight.insert.a.gui = "bold"
    _tokyonight.visual.a.gui = "bold"
    _tokyonight.replace.a.gui = "bold"
    _tokyonight.command.a.gui = "bold"
    _tokyonight.inactive.a.gui = "bold"

    require("lualine").setup({
      options = {
        theme = _tokyonight,
        component_separators = { left = "│", right = "│" },
        section_separators = { left = "", right = "" }
      },

      sections = {
        lualine_x = {
          "encoding",
          { "fileformat", icons_enabled = false },
          "filetype"
        },
      }
    })
  end
}
