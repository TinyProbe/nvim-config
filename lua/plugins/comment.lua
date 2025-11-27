return {
    "numToStr/Comment.nvim",
    opts = {
        padding = true,
        sticky = true,
        ignore = '^$',
        mappings = {
            basic = true,
            extra = true,
        },
        toggler = {
            line = '<leader>cc',
            block = '<leader>cb',
        },
        opleader = {
            line = '<leader>cc',
            block = '<leader>cb',
        },
        extra = {
            above = '<leader>cO',
            below = '<leader>co',
            eol = '<leader>cA',
        },
        pre_hook = nil,
        post_hook = nil,
    },
}
