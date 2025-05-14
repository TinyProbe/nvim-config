return {
  "kylechui/nvim-surround",
  version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup({
      -- Configuration here, or leave empty to use defaults
      -- keymaps = {},       -- Defines plugin keymaps
      -- surrounds = {},     -- Defines surround keys and behavior
      -- aliases = {},       -- Defines aliases
      -- highlight = {},     -- Defines highlight behavior
      -- move_cursor = {},   -- Defines cursor behavior
      -- indent_lines = {},  -- Defines line indentation behavior
    })
  end
}
