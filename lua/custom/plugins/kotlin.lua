-- AlexandrosAlexiou/kotlin.nvim handles starting kotlin-lsp (installed via mason),
-- so kotlin_lsp is intentionally NOT in the `servers` table in init.lua.
local gh = function(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'AlexandrosAlexiou/kotlin.nvim' }

require('kotlin').setup {
  root_markers = {
    'gradlew',
    'settings.gradle',
    'settings.gradle.kts',
    'build.gradle',
    'build.gradle.kts',
    '.git',
  },
}
