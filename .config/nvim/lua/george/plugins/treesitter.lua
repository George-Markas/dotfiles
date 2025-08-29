return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("nvim-treesitter.configs").setup({
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "bash",
        "c",
        "cmake",
        "cpp",
        "css",
        "html",
        "java",
        "javascript",
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "rust",
        "sql",
        "toml",
        "typescript",
        "xml",
        "yaml"
      }
    })
  end
}
