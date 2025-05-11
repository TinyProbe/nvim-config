return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
        -- create the highlight groups in the highlight setup hook, so they are
        -- reset every time the colorscheme changes
        local hooks = require("ibl.hooks")
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            local comment_hl_id = vim.api.nvim_get_hl_id_by_name("Comment")
            local comment_rgb_hl = vim.api.nvim_get_hl(comment_hl_id, true)
            vim.api.nvim_set_hl(0, "IndentLine", {
                fg = comment_rgb_hl["foreground"],
            })
        end)

        require("ibl").setup({
            indent = {
                char = "▎",
                highlight = { "IndentLine" },
            },
            scope = { enabled = false },
        })
    end,
}
