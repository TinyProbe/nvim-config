return {
  'MeanderingProgrammer/render-markdown.nvim',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    -- 'echasnovski/mini.nvim'         -- choose one
    -- 'echasnovski/mini.icons'        -- choose one
    'nvim-tree/nvim-web-devicons'   -- choose one
  },
  config = function()
    require("render-markdown").setup({

    })
  end
}
