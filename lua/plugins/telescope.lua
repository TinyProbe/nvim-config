return {
  "nvim-telescope/telescope.nvim",
  tag = '0.1.8',
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup({
      pickers = {
        find_files = { theme = "dropdown" },
        live_grep = { theme = "dropdown" },
        buffers = { theme = "dropdown" },
        help_tags = { theme = "dropdown" },
      },
    })

    local telescope_builtin = require("telescope.builtin")
    keymap("n", { desc = "Find files" }, "<leader>ff", telescope_builtin.find_files)
    keymap("n", { desc = "Live grep"  }, "<leader>fg", telescope_builtin.live_grep)
    keymap("n", { desc = "Buffers"    }, "<leader>fb", telescope_builtin.buffers)
    keymap("n", { desc = "Help tags"  }, "<leader>fh", telescope_builtin.help_tags)
  end,
}
