return {
    "windwp/nvim-autopairs",
    event = { "InsertEnter", "CmdlineEnter" },
    opts = {},
    config = function(_, opts)
        local autopairs = require("nvim-autopairs")
        autopairs.setup(opts)

        -- Safe nvim-cmp integration
        local cmp_ok, cmp = pcall(require, "cmp")
        if cmp_ok then
            local cmp_autopairs = require("nvim-autopairs.completion.cmp")
            cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end
    end,
    dependencies = {
        "hrsh7th/nvim-cmp", -- Explicit dependency
    },
}
