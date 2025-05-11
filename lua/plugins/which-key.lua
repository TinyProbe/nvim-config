return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    preset = "helix",
    delay = 0,
    spec = {
      { "<leader>", group = "Global" },
      { "<leader>t", group = "Tab" },
      { "<leader>w", group = "Window" },
      { "<leader>b", group = "Buffer" },
      { "<leader>q", group = "Quit" },
      { "<leader>f", group = "File" },
      { "<leader>g", group = "LSP Goto" },
      { "<leader>c", group = "Comment" },
      { "<leader>l", group = "Lazy" },
      { "g", group = "Goto" },
      { "S", mode = "v", group = "Surround" },
      { "cs", group = "ChangeSurround" },
      { "ds", group = "DeleteSurround" },
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
