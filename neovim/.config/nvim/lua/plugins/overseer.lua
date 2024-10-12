return {
    "stevearc/overseer.nvim",
    config = function()
        local overseer = require("overseer")
        overseer.setup({
            templates = { "builtin" , "user.cpp_build" }
        })
    end,
}
