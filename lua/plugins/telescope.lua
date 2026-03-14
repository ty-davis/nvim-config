return {
    "nvim-telescope/telescope.nvim",
    keys = {
        {
            "<leader>sf",
            function()
                require("telescope.builtin").find_files({ cwd = vim.fn.getcwd() })
            end,
            desc = "Find Files",
        },
        { "<leader><space>", "<cmd>Telescope buffers<cr>", desc = "Find Buffers" },
        {
            "<leader>sg",
            function()
                require("telescope.builtin").live_grep({ cwd = vim.fn.getcwd() })
            end,
            desc = "Grep (cwd)",
        },
    },
    opts = {},
}
