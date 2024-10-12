return {
    "jake-stewart/multicursor.nvim",
    config = function() 
        local mc = require("multicursor-nvim")
        
        mc.setup()

        local kset = vim.keymap.set

    end,
}
