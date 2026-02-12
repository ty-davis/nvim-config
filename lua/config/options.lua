-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.relativenumber = true
vim.opt.laststatus = 2 -- Show statusline for each window

-- Disable autoformatting by default (toggle with <leader>uf)
vim.g.autoformat = false

vim.diagnostic.config({
    virtual_text = false,
})

-- Restore classic swap file menu (remove 'A' from shortmess)
vim.opt.shortmess:remove("A")

-- Set PowerShell as default shell on Windows
if vim.fn.has("win32") == 1 then
    vim.opt.shell = "powershell.exe"
    vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
    vim.opt.shellquote = ""
    vim.opt.shellxquote = ""
end
