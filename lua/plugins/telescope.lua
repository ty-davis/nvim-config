return {
    "nvim-telescope/telescope.nvim",
    keys = {
        { "<leader>sf", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
        { "<leader><space>", "<cmd>Telescope buffers<cr>", desc = "Find Buffers" },
        { "<leader>sg", "<cmd>Telescope live_grep cwd=%:p:h<cr>", desc = "Grep (cwd)" },
    },
    opts = {},
}
