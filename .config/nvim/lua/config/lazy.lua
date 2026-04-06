local lazypath = vim.fn.stdpath("config") .. "/lazy"
vim.opt.runtimepath:prepend(lazypath)
require("lazy").setup({
    spec = {
        { import = "plugins" },
    },
    checker = { enabled = false },
})

