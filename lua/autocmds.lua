local filetype_info = {
    html = {
        tabsize = 2,
        expandtab = true,
    },
    css = {
        tabsize = 2,
        expandtab = true,
    },
    javascript = {
        tabsize = 2,
        expandtab = true,
    },
    javascriptreact = {
        tabsize = 2,
        expandtab = true,
    },
    typescript = {
        tabsize = 2,
        expandtab = true,
    },
    typescriptreact = {
        tabsize = 2,
        expandtab = true,
    },
    php = {
        tabsize = 2,
        expandtab = true,
    },
    yaml = {
        tabsize = 2,
        expandtab = true,
    },
    swift = {
        tabsize = 2,
        expandtab = true,
    },
    dart = {
        tabsize = 2,
        expandtab = true,
    },
    make = {
        tabsize = 4,
        expandtab = false,
    },
    default = {
        tabsize = 4,
        expandtab = true,
    },
}

vim.api.nvim_create_augroup("BufDefault", {})
vim.api.nvim_create_autocmd({ "BufEnter" }, {
    group = "BufDefault",
    pattern = { "*" },

    callback = function()
        local extension = vim.bo.filetype
        if filetype_info[extension] == nil then
            extension = "default"
        end
        resizeTab(filetype_info[extension]["tabsize"])
        vim.bo.expandtab = filetype_info[extension]["expandtab"]
    end,
})
