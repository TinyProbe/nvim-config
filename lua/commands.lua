-- settings
vim.api.nvim_create_user_command("UsrCmdResizeTab", "lua resizeTab(<args>)", { nargs = 1 })

-- functions
vim.api.nvim_create_user_command("UsrCmdSelectAll", "lua selectAll()", {})
vim.api.nvim_create_user_command("UsrCmdLineIndent", "lua lineIndent()", {})
vim.api.nvim_create_user_command("UsrCmdLineOutdent", "lua lineOutdent()", {})
vim.api.nvim_create_user_command("UsrCmdBlockIndent", "lua blockIndent()", {})
vim.api.nvim_create_user_command("UsrCmdBlockOutdent", "lua blockOutdent()", {})
vim.api.nvim_create_user_command("UsrCmdLineUp", "lua lineUp()", {})
vim.api.nvim_create_user_command("UsrCmdLineDown", "lua lineDown()", {})
vim.api.nvim_create_user_command("UsrCmdBlockUp", "lua blockUp()", {})
vim.api.nvim_create_user_command("UsrCmdBlockDown", "lua blockDown()", {})

-- abbrevs
require("abbrevs.abbrevs")
