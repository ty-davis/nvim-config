return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            opts.auto_install = false
            -- Use pre-built parsers, don't try to compile them
            if vim.fn.has("win32") == 1 or vim.fn.has("wsl") == 1 then
                opts.ensure_installed = {}
            end
            return opts
        end,
    },
}
