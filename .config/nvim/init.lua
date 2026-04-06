vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.swapfile = false

require("config.lazy")

-- vim.pack.add({
--     {
--         src = "https://github.com/tris203/precognition.nvim",
--         version = "a0ed9c97b24002394201c39755e10495d47b2d3f"
--     },
-- })

-- vim.opt.packpath:prepend("~/.config/nvim/pack")

vim.lsp.enable("pyrefly")

