-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Function to darken highlight group backgrounds
-- source_group: the highlight group to read the background from
-- target_groups: table of highlight groups to apply the darkened background to
-- factor: darkening factor (0.0 = black, 1.0 = no change)
local function darken_bg(source_group, target_groups, factor)
    local hl = vim.api.nvim_get_hl(0, { name = source_group })

    if hl.bg then
        local bg = hl.bg
        local r = math.floor(bg / 65536)
        local g = math.floor((bg % 65536) / 256)
        local b = bg % 256

        r = math.floor(r * factor)
        g = math.floor(g * factor)
        b = math.floor(b * factor)

        local darkened = r * 65536 + g * 256 + b

        for _, group in ipairs(target_groups) do
            vim.api.nvim_set_hl(0, group, { bg = darkened })
        end
    end
end

-- Apply immediately after theme loads
vim.defer_fn(function()
    darken_bg("CursorLine", { "CursorLine" }, 0.5)
    darken_bg("ColorColumn", { "RenderMarkdownCode", "RenderMarkdownCodeInline" }, 0.6)
    vim.diagnostic.config({ virtual_text = false })
end, 100)

-- Also apply on ColorScheme changes
vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function(ev)
        vim.defer_fn(function()
            darken_bg("CursorLine", { "CursorLine" }, 0.5)
            darken_bg("ColorColumn", { "RenderMarkdownCode", "RenderMarkdownCodeInline" }, 0.6)
        end, 10)
    end,
})

-- Filetype-specific indentation settings

-- Programming languages: 4 spaces
vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "lua",
        "python",
        "java",
        "c",
        "cpp",
        "csharp",
        "rust",
        "php",
        "ruby",
        "swift",
        "kotlin",
        "scala",
        "perl",
        "javascript",
        "typescript",
        "javascriptreact",
        "typescriptreact",
    },
    callback = function()
        vim.opt_local.tabstop = 4
        vim.opt_local.shiftwidth = 4
        vim.opt_local.expandtab = true
    end,
})

-- Go: 4-space tabs (Go convention)
vim.api.nvim_create_autocmd("FileType", {
    pattern = "go",
    callback = function()
        vim.opt_local.tabstop = 4
        vim.opt_local.shiftwidth = 4
        vim.opt_local.expandtab = false
    end,
})

-- Markup and web languages: 2 spaces
vim.api.nvim_create_autocmd("FileType", {
    pattern = {
        "html",
        "xml",
        "css",
        "scss",
        "sass",
        "less",
        "json",
        "jsonc",
        "yaml",
        "yml",
        "markdown",
        "vue",
        "svelte",
        "astro",
    },
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.shiftwidth = 2
        vim.opt_local.expandtab = true
    end,
})
