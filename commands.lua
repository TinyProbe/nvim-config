-- settings
vim.api.nvim_command('command -nargs=1 UsrCmdResizeTab :lua resizeTab(<args>)')

-- functions
vim.api.nvim_command('command UsrCmdSelectAll :lua selectAll()')
vim.api.nvim_command('command UsrCmdLineIndent :lua lineIndent()')
vim.api.nvim_command('command UsrCmdLineOutdent :lua lineOutdent()')
vim.api.nvim_command('command UsrCmdBlockIndent :lua blockIndent()')
vim.api.nvim_command('command UsrCmdBlockOutdent :lua blockOutdent()')
vim.api.nvim_command('command UsrCmdLineUp :lua lineUp()')
vim.api.nvim_command('command UsrCmdLineDown :lua lineDown()')
vim.api.nvim_command('command UsrCmdBlockUp :lua blockUp()')
vim.api.nvim_command('command UsrCmdBlockDown :lua blockDown()')

-- abbrevs
require('abbrevs/abbrevs')
