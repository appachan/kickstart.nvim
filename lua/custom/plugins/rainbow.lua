-- Color matching brackets/parens by nesting depth using treesitter.
local gh = function(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'HiPhish/rainbow-delimiters.nvim' }
