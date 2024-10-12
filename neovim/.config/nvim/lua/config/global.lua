vim.o.autoread = true
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Tab Configuration
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- Style Configuration
vim.opt.termguicolors = true

-- Diagnostic Configuration
vim.diagnostic.config({
    virtual_text = true,
    signs = true,
    underline = true,
    update_in_insert = true,
    severity_sort = false,
})

-- Keymaps Configuration
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
