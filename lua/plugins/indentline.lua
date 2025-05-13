return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  config = function()
    -- create the highlight groups in the highlight setup hook, so they are
    -- reset every time the colorscheme changes
    local hooks = require("ibl.hooks")
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      local indent_color = 0xbbbbbb
      if vim.o.background == 'dark' then
        indent_color = 0x666666
      end
      vim.api.nvim_set_hl(0, "IndentLine", { fg = indent_color })
    end)

    require("ibl").setup({
      debounce = 10,
      indent = {
        char = "▏",
        highlight = { "IndentLine" },
      },
      scope = { enabled = false },
    })
  end,
}
