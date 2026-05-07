local gh = function(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'nvim-tree/nvim-tree.lua' }

-- nvim-tree recommends disabling netrw at startup
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup {
  view = { width = 36 },
  renderer = { group_empty = true },
  filters = { dotfiles = false },
}

vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', { desc = 'Toggle file tree' })
