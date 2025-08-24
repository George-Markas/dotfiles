return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = { 'BufReadPost', 'BufNewFile' },
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
        'bash',
        'c',
        'cmake',
        'cpp',
        'css',
        'html',
        'java',
        'javascript',
        'lua',
        'make',
        'markdown',
        'markdown_inline',
        'rust',
        'sql',
        'toml',
        'typescript',
        'xml',
        'yaml'
      },

      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}
