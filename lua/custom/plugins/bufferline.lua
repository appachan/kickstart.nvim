local gh = function(repo) return 'https://github.com/' .. repo end

vim.pack.add { { src = gh 'akinsho/bufferline.nvim', version = vim.version.range '*' } }

require('bufferline').setup {
  options = {
    diagnostics = 'nvim_lsp',
    offsets = {
      { filetype = 'NvimTree', text = 'Files', separator = true },
    },
  },
}

vim.keymap.set('n', ']b', '<cmd>BufferLineCycleNext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '[b', '<cmd>BufferLineCyclePrev<CR>', { desc = 'Previous buffer' })
