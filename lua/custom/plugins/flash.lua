local gh = function(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'folke/flash.nvim' }

require('flash').setup {}

local flash = function() require('flash').jump() end
local flash_ts = function() require('flash').treesitter() end
local flash_remote = function() require('flash').remote() end

vim.keymap.set({ 'n', 'x', 'o' }, 's', flash, { desc = 'Flash' })
vim.keymap.set({ 'n', 'x', 'o' }, 'S', flash_ts, { desc = 'Flash Treesitter' })
vim.keymap.set('o', 'r', flash_remote, { desc = 'Remote Flash' })
