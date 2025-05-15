local space2 = {
  tabsize     = 2,
  expandtab   = true,
}
local space4 = {
  tabsize     = 4,
  expandtab   = true,
}
local tab2 = {
  tabsize     = 2,
  expandtab   = false,
}
local tab4 = {
  tabsize     = 4,
  expandtab   = false,
}
local filetype_info = {
  html            = space2,
  css             = space2,
  javascript      = space2,
  javascriptreact = space2,
  typescript      = space2,
  typescriptreact = space2,
  lua             = space2,
  php             = space2,
  yaml            = space2,
  swift           = space2,
  dart            = space2,
  make            = tab4,
  default         = space4,
}

vim.api.nvim_create_augroup("BufDefault", {})
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  group = "BufDefault",
  pattern = { "*" },
  callback = function()
    local extension = vim.bo.filetype
    if filetype_info[extension] == nil then
      extension = "default"
    end
    resizeTab(filetype_info[extension].tabsize)
    vim.bo.expandtab = filetype_info[extension].expandtab
  end,
})

-- neo-tree
vim.api.nvim_create_augroup("NeotreeKeeper", {})
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  group = "NeotreeKeeper",
  pattern = { "*" },
  callback = function()
    if NeotreeState == nil then return end
    local buffer = vim.api.nvim_buf_get_name(0)
    if buffer == "" and not vim.bo.modifiable then
      -- if neovim opened from directory, skip it
      return
    end
    local action = NeotreeState and "focus" or "close"
    require("neo-tree.command").execute({ action = action })
  end,
})
