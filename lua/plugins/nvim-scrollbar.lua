return {
    "petertriho/nvim-scrollbar",
    dependencies = { "kevinhwang91/nvim-hlslens" },
    config = function()
        require("scrollbar").setup({
            handle = {
                text = " ",
                blend = 70,
                color = "white",
            },
            marks = {
                Cursor = {
                    text = " ",
                    priority = 1000,
                },
                Search = { color = "orange" },
            },
        })
        require("scrollbar.handlers.search").setup({})
    end
}
