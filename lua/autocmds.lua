local space2 = {
  tabsize = 2,
  expandtab = true,
}
local space4 = {
  tabsize = 4,
  expandtab = true,
}
local tab2 = {
  tabsize = 2,
  expandtab = false,
}
local tab4 = {
  tabsize = 4,
  expandtab = false,
}

local settings = {
  javascriptreact = { tabs = space2, },
  typescriptreact = { tabs = space2, },
  javascript      = { tabs = space2, },
  typescript      = { tabs = space2, },
  html            = { tabs = space2, },
  css             = { tabs = space2, },
  php             = { tabs = space2, },
  yaml            = { tabs = space2, },
  xml             = { tabs = space4, },
  swift           = { tabs = space2, },
  lua             = { tabs = space2, },
  dart            = { tabs = space2, },
  make            = { tabs = tab4, },
  c               = { tabs = space4, },
  cpp             = { tabs = space4, },
  cs              = { tabs = space4, },
  default         = { tabs = space4, },
}

vim.api.nvim_create_augroup("BufDefault", {})

-- basic setting each filetypes
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  group = "BufDefault",
  pattern = { "*" },
  callback = function()
    local extension = vim.bo.filetype
    if settings[extension] == nil then
      extension = "default"
    end

    resizeTab(settings[extension].tabs.tabsize)
    vim.bo.expandtab = settings[extension].tabs.expandtab
  end,
})

-- synchronize neo-tree between each tabs
-- vim.api.nvim_create_autocmd({ "BufEnter" }, {
--   group = "BufDefault",
--   pattern = { "*" },
--   callback = function()
--     -- `NeotreeState` is a global variable that managed by neo-tree
--     if NeotreeState == nil then
--       return
--     end
--     local buffer = vim.api.nvim_buf_get_name(0)
--     if buffer == "" and not vim.bo.modifiable then
--       return
--     end
--     local action = NeotreeState and "focus" or "close"
--     require("neo-tree.command").execute({ action = action })
--   end,
-- })

vim.api.nvim_create_augroup("EventCallback", {})

-- Self made autosave
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  group = "EventCallback",
  pattern = { "*" },
  callback = function()
    local buffer = vim.api.nvim_buf_get_name(0)
    if buffer == "" or not vim.bo.modifiable then
      return
    end

    local delay = 50
    local interval = 5
    local function save()
      local curtime = vim.uv.hrtime() / 1000000
      if curtime < SaveTime then
        vim.defer_fn(save, interval)
        return
      end
      vim.api.nvim_command("execute \":silent w\"")
      AutoSave = false
    end

    SaveTime = vim.uv.hrtime() / 1000000 + delay
    if not AutoSave then
      AutoSave = true
      vim.defer_fn(save, interval)
    end
  end
})
