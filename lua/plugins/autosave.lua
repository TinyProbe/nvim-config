return {
  "0x00-ketsu/autosave.nvim",
  config = function()
    require("autosave").setup({
      enable = true,
      events = { 'InsertLeave', 'TextChanged' },
      conditions = {
        exists = true,
        modifiable = true,
        filename_is_not = {},
        filetype_is_not = {},
      },
      prompt = {
        enable = true,
        style = 'stdout',
        message = function()
          -- return 'autosave ' .. vim.fn.strftime('%H:%M:%S')
          return ''
        end,
      },
      write_all_buffers = false,
      debounce_delay = 100,
    })
  end,
}
